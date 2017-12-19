const _ = require('underscore');
const logger = require('../utils/logsTools').getLogger('check.params.middleware.js');

/**
 * 检查参数的完整性
 * @param params
 * @param models
 * @returns {boolean}
 */
let checkParamsComplete = (params, paramRequires) => {
    if (_.isArray(paramRequires)) {
        let IsNotParamsKey = false;
        _.each(paramRequires, (pr) => {
            if (params[pr] === undefined) {
                IsNotParamsKey = pr;
                logger.error('IsNotParamsKey', IsNotParamsKey);
            }
        });
        return IsNotParamsKey;
    }
};

/**
 * 检查数组参数是否异常的中间件
 * @type {{}}
 */
module.exports = {

    async checkParams4Users(ctx, next) {
        let usersModel = ctx.request.body;
        logger.info('userParams', usersModel);
        let isNotCompleteParams = checkParamsComplete(usersModel, [`userLoginName`, `userPassword`, `userName`]);
        if (isNotCompleteParams) {
            ctx.throw(400, `${isNotCompleteParams} require`)
        }
        await next();
    },

    async checkParams4Roles(ctx, next) {
        let roleModel = ctx.request.body;
        logger.info('RolesParams', roleModel);
        let isNotCompleteParams = checkParamsComplete(roleModel, [`rolesName`]);
        if (isNotCompleteParams) {
            ctx.throw(400, `${isNotCompleteParams} require`)
        }
        await next();
    },

    async checkParam4Permission(ctx, next) {
        let permissionModel = ctx.request.body;
        logger.info('PermissionParams', permissionModel);
        let isNotCompleteParams = checkParamsComplete(permissionModel, [`permissionName`]);
        if (isNotCompleteParams) {
            ctx.throw(400, `${isNotCompleteParams} require`)
        }
        await next();
    },

    async checkParam4AddUserRoleLink(ctx, next) {
        let addUserRoleLink = ctx.request.body;
        logger.info('PermissionParams', addUserRoleLink);
        let isNotCompleteParams = checkParamsComplete(addUserRoleLink, [`userId`, `roleId`]);
        if (isNotCompleteParams) {
            ctx.throw(400, `${isNotCompleteParams} require`)
        }
        await next();
    },

    async checkParam4DelUser(ctx, next) {
        let userId = ctx.params.userId;
        logger.info('PermissionParams', userId);
        if (!userId) {
            ctx.throw(400, `userId require`)
        }
        await next();
    },

    async checkParam4DelRole(ctx, next) {
        let roleId = ctx.params.roleId;
        logger.info('PermissionParams', roleId);
        if (!roleId) {
            ctx.throw(400, `userId require`)
        }
        await next();
    },

    async checkParam4DelPermission(ctx, next) {
        let perId = ctx.params.perId;
        logger.info('PermissionParams', perId);
        if (!perId) {
            ctx.throw(400, `userId require`)
        }
        await next();
    }
};