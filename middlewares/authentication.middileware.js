const jwt = require('jsonwebtoken');
const jwtKoa = require('koa-jwt');
const util = require('util');
const verify = util.promisify(jwt.verify);
const fs = require('fs');
const publicKey = fs.readFileSync('sources/public.pub');

module.exports = jwtKoa({
    secret: publicKey
}).unless({
    path: [/^\/users/, '/']
});