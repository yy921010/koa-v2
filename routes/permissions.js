const router = require('koa-router')();

const {
    listPermissionsService,
    addPermissionService,
    updatePermissionService,
    delPermissionByPerId,
    permissionCountsService,
} = require('../middlewares/users.middleware');

const {
    checkParam4Permission,
    checkParam4DelPermission,
} = require('../middlewares/checkParam.middleware');
const respMiddleware = require('../middlewares/res.middleware');


router.prefix('/permissions');

router.get(
    '/',
    listPermissionsService,
    respMiddleware
);

router.get(
    '/counts',
    permissionCountsService,
    respMiddleware
);


router.post(
    '/',
    checkParam4Permission,
    addPermissionService,
    respMiddleware
);


router.put(
    '/:perId',
    checkParam4DelPermission,
    checkParam4Permission,
    updatePermissionService,
    respMiddleware
);


router.delete(
    '/:perId',
    checkParam4DelPermission,
    delPermissionByPerId,
    respMiddleware
);

module.exports = router;