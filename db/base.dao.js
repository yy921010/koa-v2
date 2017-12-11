const mySQL = require('mysql');
const NDBC = require('../sources/NDBC.properties');
const pool = mySQL.createPool(NDBC());
/**
 * Promise封装mysql模块
 */

let baseDAO = function (sql, values) {
    return new Promise((resolve, reject) => {
        // 创建链接
        pool.getConnection(function (err, connection) {
            if (err) {
                reject(err)
            } else {
                connection.query(sql, values, (err, rows) => {
                    if (err) {
                        reject(err)
                    } else {
                        resolve(rows)
                    }
                    // 释放链接
                    connection.release()
                })
            }
        })
    })
};
module.exports = {baseDAO};
