const router = require('koa-router')(),
    {
        userCountsService,
        listUsersService,
        addUsersService
    } = require('../middlewares/users.middleware'),
    respMiddleware = require('../middlewares/res.middleware'),

    {checkParams4Users} = require('../middlewares/checkParam.middleware');

router.prefix('/users');

router.get('/', userCountsService, function (ctx, next) {

    ctx.body = 'this is a users response!'
});

router.get('/bar', listUsersService, respMiddleware);

router.put('/info', checkParams4Users, addUsersService, respMiddleware);

module.exports = router;
