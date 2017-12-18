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
    getRolePermissionSQL,
    getUserByUserNameSQL,
    getRolesByUsersIdSQL
} = require('../sources/users.sql');
const {baseDAO} = require('./base.dao');

/**
 * 用户的DAO层
 * @returns {Promise.<*>}
 */
let userCounts = async () => {
    return await baseDAO(countsUserSQL);
};

let roleCounts = async () => {
    return await baseDAO(countsRolesSQL);
};

let permissionCounts = async () => {
    return await baseDAO(countsPermissionSQL);
};

let listUser = async () => {
    return await baseDAO(listUsersSQL);
};

let listRoles = async () => {
    return await baseDAO(listRolesSQL);
};

let listPermission = async () => {
    return await baseDAO(listPermissionSQL);
};

let addUser = async (userInfo) => {
    return await baseDAO(addUserSQL, userInfo);
};

let addRole = async (roleInfo) => {
    return await baseDAO(addRolesSQL, roleInfo);
};

let addPermission = async (permissionInfo) => {
    return await baseDAO(addPermissionSQL, permissionInfo);
};

let updateUser = async (userInfo) => {
    return await baseDAO(updateUserSQL, userInfo);
};

let updateRoles = async (roleInfo) => {
    return await baseDAO(updateRoleSQL, roleInfo);
};

let updatePermission = async (permissionInfo) => {
    return await baseDAO(updatePermissionSQL, permissionInfo);
};

let delUser = async (userId) => {
    return await baseDAO(delUserByIdSQL, userId);
};

let delRoles = async (roleId) => {
    return await baseDAO(delRoleByIdSQL, roleId);
};
let delPermission = async (permissionId) => {
    return await baseDAO(delPermissionByIdSQL, permissionId);
};

let getUserRole = async () => {
    return await baseDAO(getUserRoleSQL);
};

let getRolePermission = async () => {
    return await baseDAO(getRolePermissionSQL);
};

let getUserByLoginName = async (userLoginName) => {
    return await baseDAO(getUserByUserNameSQL, userLoginName);
};

let getRolesByUsersId = async (userId) => {
    return await baseDAO(getRolesByUsersIdSQL, userId);
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
    getRolePermission,
    getUserByLoginName,
    getRolesByUsersId
};