const jwt = require('jsonwebtoken');
const koaJWT = require('koa-jwt');
const util = require('util');
const verify = util.promisify(jwt.verify);
const fs = require('fs');
const publicKey = fs.readFileSync('sources/public.pub');

module.exports = koaJWT({
    secret: publicKey
}).unless({
    path: [
        /^\/auth/,
        '/',
        '/favicon.ico'
    ]
});