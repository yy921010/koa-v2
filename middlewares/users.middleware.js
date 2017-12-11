const {
    userCounts,
    roleCounts,
    permissionCounts,
    listUser,
    listRoles,
    listPermission
} = require('../db/users.dao');
const logger = require('../utils/logsTools').getLogger('users.middlewares.js');

const {converseToModel} = require('../utils/columeToModel');

const {checkParamsIsEmpty} = require('../utils/check.params');

const {usersParams} = require('../models/validate.params.model');

/**
 *用户的服务层
 */
module.exports = {

    async userCountsService(ctx, next) {
        let userCountDAO = await userCounts();
        logger.debug('userCountsService:', userCountDAO);
        await next();
    },

    async roleCountsService(ctx, next) {
        let roleCountDAO = await roleCounts();
        logger.debug('roleCountsService:', roleCountDAO);
        await next();
    },

    async permissionCountsService(ctx, next) {
        let permissionCountsDAO = await permissionCounts();
        logger.debug('permissionCountsService:', permissionCountsDAO);
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
        logger.debug('listUsers:', listUserDAO);
        ctx.dataServices = converseToModel(listUserDAO);
        logger.debug('converseToModel:', ctx.dataServices);
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
        logger.debug('listUsers:', listRolesDAO);
        ctx.dataServices = converseToModel(listRolesDAO);
        logger.debug('converseToModel:', ctx.dataServices);
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
        logger.debug('listUsers:', listPermissionDAO);
        ctx.dataServices = converseToModel(listPermissionDAO);
        logger.debug('converseToModel:', ctx.dataServices);
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
        let usersModel = ctx.request.body;
        logger.info('userParams', usersModel);
        let paramsEmptyStr = checkParamsIsEmpty(usersModel, usersParams());
        if (paramsEmptyStr) {
            ctx.throw(400, `${paramsEmptyStr} require`)
        }
        await next();
    }
};