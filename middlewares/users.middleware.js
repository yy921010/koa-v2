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
    getRolesByUsersId,
    addUsersRoles,
    delUsersRole,
    getRolePermission,
    addRolesRolesPermission,
    delRolePerLink
} = require('../db/users.dao');
const logger = require('../utils/logsTools').getLogger('users.middlewares.js');
const {converseToModel} = require('../utils/columeToModel');
const retCodeEnum = require('../models/retCode.model');
const moment = require('moment');

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
    },

    async addUsersRolesService(ctx, next) {
        logger.debug('添加用户和角色关系');
        let userRoleLink = ctx.request.body;
        let addStatus = await addUsersRoles([userRoleLink.userId, userRoleLink.roleId]);
        ctx.dataServices = (addStatus && addStatus.affectedRows >= 1);
        ctx.retCode = addStatus ? retCodeEnum.ADD_USER_ROLE_LINK_SUCCESS : retCodeEnum.ADD_USER_ROLE_LINK_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'addUsersRoles';
        logger.debug('[addUsersRolesService]', addStatus);
        await next();
    },

    async delUsersRoleService(ctx, next) {
        logger.debug('删除用户和角色关系');
        let userId = ctx.params.userId;
        let delStatus = await delUsersRole([userId]);
        ctx.dataServices = (delStatus && delStatus.affectedRows >= 1);
        ctx.retCode = delStatus ? retCodeEnum.DEL_USER_ROLE_LINK_SUCCESS : retCodeEnum.DEL_USER_ROLE_LINK_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'delUsersRole';
        logger.debug('[delUsersRoleService]', delStatus);
        await next();
    },

    async getRolePermissionService(ctx, next) {
        logger.debug('通过角色ID当前的用户的角色');
        let roleId = ctx.params.roleId;
        let rolePermissionDAO = await getRolePermission([roleId]);
        ctx.dataServices = converseToModel(rolePermissionDAO);
        logger.debug('[getRolePermissionService]', ctx.dataServices);
        ctx.dataType = 'COMBINATION';
        ctx.dataMethod = 'getRolePermission';
        await next();
    },

    async addRolesRolesPermissionServices(ctx, next) {
        logger.debug('添加角色和权限关系');
        let rolePermissionLink = ctx.request.body;
        let {perIds, roleId} = rolePermissionLink;
        let simpleParam = [];
        if (typeof perIds === 'string') {
            simpleParam = [roleId, perIds, moment().format('YYYY-MM-DD, hh:mm:ss'), moment().format('YYYY-MM-DD, hh:mm:ss')];
        } else {
            for (let perId of perIds) {
                simpleParam.push([roleId, perId, moment().format('YYYY-MM-DD, hh:mm:ss'), moment().format('YYYY-MM-DD, hh:mm:ss')]);
            }
        }
        logger.debug('[simpleParam]', simpleParam);
        let addStatus = await addRolesRolesPermission([simpleParam]);
        ctx.dataServices = (addStatus && addStatus.affectedRows >= 1);
        ctx.retCode = addStatus ? retCodeEnum.ADD_ROLE_PER_SUCCESS : retCodeEnum.ADD_ROLE_PER_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'addRolesRolesPermission';
        logger.debug('[addRolesRolesPermissionServices]', addStatus);
        await next();
    },

    async delRolePerLinkService(ctx, next) {
        logger.debug('删除角色和权限关系');
        let roleId = ctx.params.roleId;
        let delStatus = await delRolePerLink([roleId]);
        ctx.dataServices = (delStatus && delStatus.affectedRows >= 1);
        ctx.retCode = delStatus ? retCodeEnum.DEL_ROLE_PER_SUCCESS : retCodeEnum.DEL_ROLE_PER_FAIL;
        ctx.dataType = 'COMMIT_STATUS';
        ctx.dataMethod = 'delRolePerLink';
        logger.debug('[delRolePerLinkService]', delStatus);
        await next();
    }
};