const {getUserByLoginName, getRolesByUsersId} = require('../db/users.dao');
const {converseToModel} = require('../utils/columeToModel');
const jwt = require('jsonwebtoken');
const fs = require('fs');
const _ = require('underscore');
const bcrypt = require('bcryptjs');

module.exports = {
    async createToken(ctx, next) {
        const publicKey = fs.readFileSync('sources/public.pub');
        const {body} = ctx.request;
        let users = await getUserByLoginName([body.userLoginName]);
        let user = converseToModel(users)[0];
        let roles = await getRolesByUsersId([user.id]);
        let role = converseToModel(roles)[0];
        if (_.isEmpty(user)) {
            ctx.status = 400;
            ctx.body = {
                message: '用户名错误',
            };
            return;
        }
        let passwordDb = user.userPassword;
        if (bcrypt.compareSync(body.userPassword, passwordDb)) {
            ctx.status = 200;
            let userToken = {
                name: user.userLoginName,
                id: role.id,
                //签发时间
                iat: new Date().getTime()
            };
            let token = jwt.sign(userToken, publicKey, {expiresIn: '1h'});
            ctx.body = {
                expires_in: '1h',
                access_token: token,
                user_name: user.userLoginName,
                user_role: converseToModel(roles)[0].rolesName
            }
        } else {
            ctx.status = 400;
            ctx.body = {
                message: '用户名或者密码错误',
            };
        }
    }
};