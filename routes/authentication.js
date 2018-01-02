const router = require('koa-router')();
const {createToken} = require('../middlewares/token.middleware');
router.prefix('/auth')
    .post('/token',
        createToken);


module.exports = router;