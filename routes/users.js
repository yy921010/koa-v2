const router = require('koa-router')();
const {userCountsService, listUsersService, addUsersService} = require('../middlewares/users.middleware');
const respMiddleware = require('../middlewares/res.middleware');

router.prefix('/users');

router.get('/', userCountsService, function (ctx, next) {

    ctx.body = 'this is a users response!'
});

router.get('/bar', listUsersService, respMiddleware);

router.put('/info', addUsersService, respMiddleware);

module.exports = router;
