const router = require('koa-router')(),
    {
        listUsersService, listRolesService, listPermissionsService,
        addUsersService, addRolesService, addPermissionService,
        updateUsersService, updateRolesService, updatePermissionService,
        delUserByUserId, delRoleByRoleId, delPermissionByPerId, getUserByLoginName,
        userCountsService
    } = require('../middlewares/users.middleware'),
    {
        checkParams4Users, checkParams4Roles, checkParam4Permission,
        checkParam4DelUser, checkParam4DelRole, checkParam4DelPermission
    } = require('../middlewares/checkParam.middleware'),
    respMiddleware = require('../middlewares/res.middleware');

//router.prefix('/api');


router.get(
    '/users',
    listUsersService,
    respMiddleware
);

router.get(
    '/users/:userLoginName',
    getUserByLoginName,
    respMiddleware
);

router.get(
    '/users/counts',
    userCountsService,
    respMiddleware
);

router.get(
    '/roles',
    listRolesService,
    respMiddleware
);
router.get(
    '/permissions',
    listPermissionsService,
    respMiddleware
);

router.post(
    '/users',
    checkParams4Users,
    addUsersService,
    respMiddleware
);

router.post(
    '/roles',
    checkParams4Roles,
    addRolesService,
    respMiddleware
);

router.post(
    '/permissions',
    checkParam4Permission,
    addPermissionService,
    respMiddleware
);

router.put(
    '/users/:userId',
    checkParam4DelUser,
    checkParams4Users,
    updateUsersService,
    respMiddleware
);

router.put(
    '/roles/:roleId',
    checkParam4DelRole,
    checkParams4Roles,
    updateRolesService,
    respMiddleware
);

router.put(
    '/permissions/:perId',
    checkParam4DelPermission,
    checkParam4Permission,
    updatePermissionService,
    respMiddleware
);

router.delete(
    '/users/:userId',
    checkParam4DelUser,
    delUserByUserId,
    respMiddleware
);

router.delete(
    '/roles/:roleId',
    checkParam4DelRole,
    delRoleByRoleId,
    respMiddleware
);

router.delete(
    '/permissions/:perId',
    checkParam4DelPermission,
    delPermissionByPerId,
    respMiddleware
);


module.exports = router;
