const koaJWT = require('koa-jwt');
const fs = require('fs');
const publicKey = fs.readFileSync('sources/public.pub');


module.exports = koaJWT({secret: publicKey}).unless({path: [/^\/auth/, '/', '/favicon.ico']});