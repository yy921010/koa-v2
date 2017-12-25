const {getUserByLoginName, getRolesByUsersId} = require('../db/users.dao');
const {converseToModel} = require('../utils/columeToModel');
const jwt = require('jsonwebtoken');
const fs = require('fs');
const _ = require('underscore');

module.exports = {
    async createToken(ctx, next) {
        const publicKey = fs.readFileSync('sources/public.pub');
        const {body} = ctx.request;
        let users = await getUserByLoginName([body.userLoginName]);

        let user = converseToModel(users)[0];
        if (_.isEmpty(user)) {
            ctx.status = 400;
            ctx.body = {
                message: '用户名错误',
            };
            return;
        }
        if (user.userPassword === body.userPassword) {
            ctx.status = 200;
            let userToken = {
                name: user.userLoginName,
                id: user.id,
                //签发时间
                iat: new Date().getTime()
            };
            let token = 'Bearer ' + jwt.sign(userToken, publicKey, {expiresIn: '1h'});
            ctx.body = {
                expiresIn: '1h',
                code: 1,
                token
            }
        }
    }
};