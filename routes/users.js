const router = require('koa-router')();

const jwt = require('jsonwebtoken')
const util = require('util')
const verify = util.promisify(jwt.verify)

const {
    listUsersService,
    addUsersService,
    updateUsersService,
    delUserByUserId, getUserByLoginName,
    userCountsService, getUserRolesService,
    getRolesByUsersIdServices, addUsersRolesService, delUsersRoleService
} = require('../middlewares/users.middleware');
const {
    checkParams4Users,
    checkParam4DelUser,
    checkParam4AddUserRoleLink,
} = require('../middlewares/checkParam.middleware');
const respMiddleware = require('../middlewares/res.middleware');


router.prefix('/users');

router.get('/',
    listUsersService,
    respMiddleware,
);

router.post('/',
    checkParams4Users,
    addUsersService,
    respMiddleware
);

router.put(
    '/:userId',
    checkParam4DelUser,
    checkParams4Users,
    updateUsersService,
    respMiddleware
);

router.delete(
    '/:userId',
    checkParam4DelUser,
    delUserByUserId,
    respMiddleware
);

router.get(
    '/roles/all-link',
    getUserRolesService,
    respMiddleware
);

router.post(
    '/roles/link',
    checkParam4AddUserRoleLink,
    addUsersRolesService,
    respMiddleware
);

router.get(
    '/counts',
    userCountsService,
    respMiddleware
);

router.get(
    '/:userLoginName/user-login-name',
    getUserByLoginName,
    respMiddleware
);


router.get(
    '/:userId/roles',
    getRolesByUsersIdServices,
    respMiddleware
);


router.delete(
    '/:userId/roles',
    delUsersRoleService,
    respMiddleware
);

module.exports = router;
