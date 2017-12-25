const Koa = require('koa');
const app = new Koa();
const views = require('koa-views');
const json = require('koa-json');
const onerror = require('koa-onerror');
const bodyparser = require('koa-bodyparser');

const koaServer = require('koa-static');
const staticResources = koaServer(__dirname + '/public');
const authentication = require('./middlewares/authentication.middileware');

const index = require('./routes/index');
const users = require('./routes/users');
const roles = require('./routes/roles');
const auth = require('./routes/authentication');

const permissions = require('./routes/permissions');
const logger = require('./utils/logsTools').getLogger('app.js');

// error handler
onerror(app);

// middlewares
app.use(bodyparser({
    enableTypes: ['json', 'form', 'text']
}));
app.use(json());
app.use(staticResources);
app.use(views(__dirname + '/views', {
    extension: 'pug'
}));

app.use(authentication);

// logger
app.use(async (ctx, next) => {
    const start = new Date();
    await next();
    const ms = new Date() - start;
    logger.info(`${ctx.method} ${ctx.url} - ${ms}ms`);
});

// routes
app.use(index.routes(), index.allowedMethods());
app.use(users.routes(), users.allowedMethods());
app.use(roles.routes(), roles.allowedMethods());
app.use(permissions.routes(), permissions.allowedMethods());
app.use(auth.routes(), auth.allowedMethods())

// error-handling
app.on('error', (err, ctx) => {
    logger.error('server error', err, ctx);
});

module.exports = app;
