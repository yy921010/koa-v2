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
    }
};