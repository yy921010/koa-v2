const {
    userCounts,
    roleCounts,
    permissionCounts,
    listUser,
    listRoles,
    listPermission,
    addUser,
    addRole,
    addPermission,
    updateUser,
    updateRoles,
    updatePermission,
    delUser,
    delRoles,
    delPermission,
    getUserByLoginName,
    getUserRole,
    getRolesByUsersId
} = require('../db/users.dao');
const logger = require('../utils/logsTools').getLogger('users.middlewares.js');
const {converseToModel} = require('../utils/columeToModel');
const retCodeEnum = require('../models/retCode.model');

/**
 *用户的服务层
 */
module.exports = {
    /**
     * 所有用户的个数
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async userCountsService(ctx, next) {
        let userCountDAO = await userCounts();
        ctx.dataServices = converseToModel(userCountDAO);
        logger.debug('[countUsers]', ctx.dataServices);
        ctx.dataType = 'COUNTS';
        ctx.dataMethod = 'countUsers';
        await next();
    },
    /**
     * 所有角色的个数
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async roleCountsService(ctx, next) {
        let roleCountDAO = await roleCounts();
        ctx.dataServices = converseToModel(roleCountDAO);
        logger.debug('[countRoles]', ctx.dataServices);
        ctx.dataType = 'COUNTS';
        ctx.dataMethod = 'countRoles';
        await next();
    },
    /**
     * 所有权限的个数
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async permissionCountsService(ctx, next) {
        let permissionCountsDAO = await permissionCounts();
        ctx.dataServices = converseToModel(permissionCountsDAO);
        logger.debug('[countPermission]', ctx.dataServices);
        ctx.dataType = 'COUNTS';
        ctx.dataMethod = 'countPermission';
        await next();
    },
    /**
     * 查询用户所有列表
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async listUsersService(ctx, next) {
        let listUserDAO = await listUser();
        ctx.dataServices = converseToModel(listUserDAO);
        logger.debug('[listUsers]', ctx.dataServices);
        ctx.dataType = 'COMBINATION';
        ctx.dataMethod = 'listUsers';
        await next();
    },
    /**
     * 查询角色列表
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async listRolesService(ctx, next) {
        let listRolesDAO = await listRoles();
        ctx.dataServices = converseToModel(listRolesDAO);
        logger.debug('[listRoles]', ctx.dataServices);
        ctx.dataType = 'COMBINATION';
        ctx.dataMethod = 'listRoles';
        await next();
    },

    /**
     * 查询所有权限列表
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async listPermissionsService(ctx, next) {
        let listPermissionDAO = await listPermission();
        ctx.dataServices = converseToModel(listPermissionDAO);
        logger.debug('[listPermissions]', ctx.dataServices);
        ctx.dataType = 'COMBINATION';
        ctx.dataMethod = 'listPermissions';
        await next();
    },
    /**
     * 添加单个用户
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async addUsersService(ctx, next) {
        logger.debug('添加单个用户');
        let userInfo = ctx.request.body;
        let addStatus = await addUser([userInfo.userLoginName, userInfo.userPassword, userInfo.userName]);
        let isAddStatus = (addStatus && addStatus.affectedRows >= 1);
        ctx.dataServices = isAddStatus;
        ctx.retCode = isAddStatus ? retCodeEnum.ADD_USER_SUCCESS : retCodeEnum.ADD_USER_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'addUsers';
        logger.debug('[addUsersService]', addStatus);
        await next();
    },
    /**
     * 添加用户的角色
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async addRolesService(ctx, next) {
        logger.debug('添加用户的角色');
        let userRole = ctx.request.body;
        let addStatus = await addRole([userRole.rolesName]);
        let isAddStatus = (addStatus && addStatus.affectedRows >= 1);
        ctx.dataServices = isAddStatus;
        ctx.retCode = isAddStatus ? retCodeEnum.ADD_ROLE_SUCCESS : retCodeEnum.ADD_ROLE_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'addRoles';
        logger.debug('[addRolesService]', addStatus);
        await next();
    },
    /**
     * 添加角色对应的权限
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async addPermissionService(ctx, next) {
        logger.debug('添加角色对应的权限');
        let permiss = ctx.request.body;
        let addStatus = await addPermission([permiss.permissionName]);
        let isAddStatus = (addStatus && addStatus.affectedRows >= 1);
        ctx.dataServices = isAddStatus;
        ctx.retCode = isAddStatus ? retCodeEnum.ADD_PERMISSION_SUCCESS : retCodeEnum.ADD_PERMISSION_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'addPermission';
        logger.debug('[addPermissionService]', addStatus);
        await next();
    },
    /**
     * 更新用户
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async updateUsersService(ctx, next) {
        logger.debug('更新用户');
        let userInfo = ctx.request.body;
        let userId = ctx.params.userId;
        let addStatus = await updateUser([userInfo.userLoginName, userInfo.userPassword, userInfo.userName, userId]);
        let isAddStatus = (addStatus && addStatus.affectedRows >= 1);
        ctx.dataServices = isAddStatus;
        ctx.retCode = isAddStatus ? retCodeEnum.UPDATE_USER_SUCCESS : retCodeEnum.UPDATE_USER_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'updateUsers';
        logger.debug('[updateUsersService]', addStatus);
        await next();
    },
    /**
     * 更新角色
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async updateRolesService(ctx, next) {
        logger.debug('更新角色');
        let userRoles = ctx.request.body;
        let roleId = ctx.params.roleId;
        let addStatus = await updateRoles([userRoles.rolesName, roleId]);
        let isAddStatus = (addStatus && addStatus.affectedRows >= 1);
        ctx.dataServices = isAddStatus;
        ctx.retCode = isAddStatus ? retCodeEnum.UPDATE_ROLE_SUCCESS : retCodeEnum.UPDATE_ROLE_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'updateRoles';
        logger.debug('[updateRolesService]', addStatus);
        await next();
    },
    /**
     * 更新权限
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async updatePermissionService(ctx, next) {
        logger.debug('更新权限');
        let permission = ctx.request.body;
        let perId = ctx.params.perId;
        let addStatus = await updatePermission([permission.permissionName, perId]);
        let isAddStatus = (addStatus && addStatus.affectedRows >= 1);
        ctx.dataServices = isAddStatus;
        ctx.retCode = isAddStatus ? retCodeEnum.UPDATE_PERMISSION_SUCCESS : retCodeEnum.UPDATE_PERMISSION_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'updatePermission';
        logger.debug('[updatePermissionService]', addStatus);
        await next();
    },
    /**
     * 根据用户id删除用户
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async delUserByUserId(ctx, next) {
        logger.debug('删除用户');
        let userId = ctx.params.userId;
        let addStatus = await delUser([userId]);
        let isAddStatus = (addStatus && addStatus.affectedRows >= 1);
        ctx.dataServices = isAddStatus;
        ctx.retCode = isAddStatus ? retCodeEnum.DEL_USER_SUCCESS : retCodeEnum.DEL_USER_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'delUser';
        logger.debug('[delUserByUserId]', addStatus);
        await next();
    },
    /**
     * 根据id删除角色
     * @param ctx
     * @param next
     * @returns {Promise.<void>}
     */
    async delRoleByRoleId(ctx, next) {
        logger.debug('删除角色');
        let roleId = ctx.params.roleId;
        let addStatus = await delRoles([roleId]);
        let isAddStatus = (addStatus && addStatus.affectedRows >= 1);
        ctx.dataServices = isAddStatus;
        ctx.retCode = isAddStatus ? retCodeEnum.DEL_ROLE_SUCCESS : retCodeEnum.DEL_ROLE_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'delRole';
        logger.debug('[delRoleByRoleId]', addStatus);
        await next();
    },

    async delPermissionByPerId(ctx, next) {
        logger.debug('删除角色');
        let perId = ctx.params.perId;
        let addStatus = await delPermission([perId]);
        let isAddStatus = (addStatus && addStatus.affectedRows >= 1);
        ctx.dataServices = isAddStatus;
        ctx.retCode = isAddStatus ? retCodeEnum.DEL_PERMISSION_SUCCESS : retCodeEnum.DEL_PERMISSION_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'delPermission';
        logger.debug('[delPermissionByPerId]', addStatus);
        await next();
    },
    /**
     * 根据用户的登录名查询用户
     * @param {*} ctx
     * @param {*} next
     */
    async getUserByLoginName(ctx, next) {
        logger.debug('根据用户的登录名');
        let userLoginName = ctx.params.userLoginName;
        let userDAO = await getUserByLoginName([userLoginName]);
        ctx.dataServices = converseToModel(userDAO);
        logger.debug('[usersByLoginName]', ctx.dataServices);
        ctx.dataType = 'COMBINATION';
        ctx.dataMethod = 'usersByLoginName';
        await next();
    },

    async getUserRolesService(ctx, next) {
        logger.debug('当前的用户的角色');
        let userRoleDAO = await getUserRole();
        ctx.dataServices = converseToModel(userRoleDAO);
        logger.debug('[getUserRolesService]', ctx.dataServices);
        ctx.dataType = 'COMBINATION';
        ctx.dataMethod = 'getUserRoles';
        await next();
    },
    async getRolesByUsersIdServices(ctx, next) {
        logger.debug('通过用户ID当前的用户的角色');
        let userId = ctx.params.userId;
        let userRoleDAO = await getRolesByUsersId([userId]);
        ctx.dataServices = converseToModel(userRoleDAO);
        logger.debug('[getRolesByUsersIdServices]', ctx.dataServices);
        ctx.dataType = 'COMBINATION';
        ctx.dataMethod = 'getUserRolesByUserId';
        await next();
    }
};