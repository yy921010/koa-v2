const {
    countsUserSQL,
    countsRolesSQL,
    countsPermissionSQL,
    listUsersSQL,
    listRolesSQL,
    listPermissionSQL,
    addUserSQL,
    addRolesSQL,
    addPermissionSQL,
    updateUserSQL,
    updateRoleSQL,
    updatePermissionSQL,
    delUserByIdSQL,
    delRoleByIdSQL,
    delPermissionByIdSQL,
    getUserRoleSQL,
    getRolePermissionSQL
} = require('../sources/users.sql');
const {baseDAO} = require('./base.dao');
const logger = require('../utils/logsTools').getLogger('user.dao.js');

/**
 * 用户的DAO层
 * @returns {Promise.<*>}
 */
let userCounts = async () => {
    logger.debug('执行sql语句:', countsUserSQL);
    return await baseDAO(countsUserSQL);
};

let roleCounts = async () => {
    logger.debug('执行sql语句:', countsRolesSQL);
    return await baseDAO(countsRolesSQL);
};

let permissionCounts = async () => {
    logger.debug('执行sql语句:', countsPermissionSQL);
    return await baseDAO(countsPermissionSQL);
};

let listUser = async () => {
    logger.debug('执行sql语句:', listUsersSQL);
    return await baseDAO(listUsersSQL);
};

let listRoles = async () => {
    logger.debug('执行sql语句:', listRolesSQL);
    return await baseDAO(listRolesSQL);
};

let listPermission = async () => {
    logger.debug('执行sql语句:', listPermissionSQL);
    return await baseDAO(listPermissionSQL);
};

let addUser = async (userInfo) => {
    logger.debug('执行sql语句:', addUserSQL);
    return await baseDAO(addUserSQL, userInfo);
};

let addRole = async (roleInfo) => {
    logger.debug('执行sql语句:', addRolesSQL);
    return await baseDAO(addRolesSQL, roleInfo);
};

let addPermission = async (permissionInfo) => {
    logger.debug('执行sql语句:', addPermissionSQL);
    return await baseDAO(addPermissionSQL, permissionInfo);
};

let updateUser = async (userInfo) => {
    logger.debug('执行sql语句:', updateUserSQL);
    return await baseDAO(updateUserSQL, userInfo);
};

let updateRoles = async (roleInfo) => {
    logger.debug('执行sql语句:', updateRoleSQL);
    return await baseDAO(updateRoleSQL, roleInfo);
};

let updatePermission = async (permissionInfo) => {
    logger.debug('执行sql语句:', updatePermissionSQL);
    return await baseDAO(updatePermissionSQL, permissionInfo);
};

let delUser = async (userId) => {
    logger.debug('执行sql语句:', delUserByIdSQL);
    return await baseDAO(delUserByIdSQL, userId);
};

let delRoles = async (roleId) => {
    logger.debug('执行sql语句:', delRoleByIdSQL);
    return await baseDAO(delRoleByIdSQL, roleId);
};
let delPermission = async (permissionId) => {
    logger.debug('执行sql语句:', delPermissionByIdSQL);
    return await baseDAO(delPermissionByIdSQL, permissionId);
};

let getUserRole = async () => {
    logger.debug('执行sql语句:', getUserRoleSQL);
    return await baseDAO(getUserRoleSQL);
};

let getRolePermission = async () => {
    logger.debug('执行sql语句:', getRolePermissionSQL);
    return await baseDAO(getRolePermissionSQL);
};
module.exports = {
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
    getUserRole,
    getRolePermission
};