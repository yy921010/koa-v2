const router = require('koa-router')();
const {
    listRolesService,
    addRolesService,
    updateRolesService,
    delRoleByRoleId,
    getRolePermissionService,
    addRolesRolesPermissionServices,
    delRolePerLinkService,
    roleCountsService
} = require('../middlewares/users.middleware');
const {
    checkParams4Roles,
    checkParam4DelRole,
    checkParam4AddRolePermissionLink
} = require('../middlewares/checkParam.middleware');
const respMiddleware = require('../middlewares/res.middleware');

router.prefix('/roles');

router.get(
    '/',
    listRolesService,
    respMiddleware
);

router.get(
    '/counts',
    roleCountsService,
    respMiddleware
);

router.post(
    '/',
    checkParams4Roles,
    addRolesService,
    respMiddleware
);

router.put(
    '/:roleId',
    checkParam4DelRole,
    checkParams4Roles,
    updateRolesService,
    respMiddleware
);

router.delete(
    '/:roleId',
    checkParam4DelRole,
    delRoleByRoleId,
    respMiddleware
);


router.get(
    '/:roleId/permission',
    getRolePermissionService,
    respMiddleware
);

router.post(
    '/permission/link',
    checkParam4AddRolePermissionLink,
    addRolesRolesPermissionServices,
    respMiddleware
);

router.delete(
    '/:roleId/permission',
    delRolePerLinkService,
    respMiddleware
);


module.exports = router;