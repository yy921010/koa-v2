const _ = require('underscore');
const logger = require('./logsTools').getLogger('check.params.js');
module.exports = {
    /**
     * 判断对象的key是否有空
     */
    checkParamsIsEmpty(params, models) {
        if (_.isObject(models)) {
            let IsNotParamsKey = false;
            for (let key of Object.keys(models)) {
                if (params[key] === undefined) {
                    IsNotParamsKey = key;
                    logger.error('IsNotParamsKey', key);
                }
            }
            return IsNotParamsKey;
        }

    }
};