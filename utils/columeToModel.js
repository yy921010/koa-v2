const _ = require('underscore');

/**
 * 首字母大写
 * @param str
 * @returns {string}
 */
let firstUpperCase = (str) => {
    return str.toLowerCase().replace(/( |^)[a-z]/g, (L) => L.toUpperCase());
};


let converseKey = (columnKey) => {
    let keyArrays = columnKey.split('_');
    let modelArrays = _.map(keyArrays, (item, index) => {
        return index !== 0 ? firstUpperCase(item) : item;
    });
    return modelArrays.join('');
};

module.exports = {
    /**
     * 将数据库中列的字段转换为对象的属性
     * @param columnKey
     */
    converseToModel(mysqlValues) {
        if (_.isArray(mysqlValues)) {
            _.each(mysqlValues, (mysqlItems) => {
                _.each(mysqlItems, (item, key) => {
                    mysqlItems[converseKey(key)] = item;
                    if (converseKey(key) !== key) {
                        delete mysqlItems[key];
                    }
                });
            });
            return mysqlValues;
        }
    }
};

