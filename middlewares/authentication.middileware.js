const koaJWT = require('koa-jwt');
const fs = require('fs');
const publicKey = fs.readFileSync('sources/public.pub');
const {getRolePermission} = require('../db/users.dao');
const jwt = require('jsonwebtoken');
const util = require('util');
const verify = util.promisify(jwt.verify);
const logger = require('../utils/logsTools').getLogger('authentication.middleware.js');
const {converseToModel} = require('../utils/columeToModel');
const url = require('url');
const pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]");

module.exports = {
    /**
     * 验证token的有效性
     * @returns {*}
     */
    authenticated() {
        return koaJWT({secret: publicKey}).unless({path: [/^\/auth/, '/', '/favicon.ico']})
    },
    /**
     * 通过token验证用户权限
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async normalAuthenticated(ctx, next) {
        let skip = false,
            {header: {authorization}} = ctx,
            requestedUrl = url.parse((ctx.url) || '', true);
        if (authorization) {
            let userToken = authorization.split(' ')[1];
            let decodedToken = await verify(userToken, publicKey);
            if (decodedToken.id) {
                let roleId = decodedToken.id;
                let rolePermission = await getRolePermission([roleId]);
                let rolePersList = converseToModel(rolePermission);

                skip = skip || rolePersList.some((p) => {
                    let {permissionName} = p;
                    let isSpecialUrl = pattern.test(permissionName);
                    if (isSpecialUrl) {
                        permissionName = new RegExp(permissionName);
                    }
                    return (typeof permissionName === 'string' && permissionName === requestedUrl.pathname) ||
                        (permissionName instanceof RegExp && !!permissionName.exec(requestedUrl.pathname));
                });
                if (!skip) {
                    ctx.status = 400;
                    ctx.body = {
                        message: '用户权限较低',
                    };
                    return;
                }
            }
        }
        await next();
    }
};