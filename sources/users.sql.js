/**
 * 保存操作用户的所有的SQL语句
 * @type {string}
 */

const listUsersSQL = `SELECT * FROM users_list`;

const listRolesSQL = `SELECT * FROM users_roles`;

const listPermissionSQL = `SELECT * FROM users_permission`;

const countsUserSQL = `SELECT COUNT(id) FROM users_list`;

const countsRolesSQL = `SELECT COUNT(id) FROM users_roles`;

const countsPermissionSQL = `SELECT COUNT(id) FROM users_roles`;

const getUserByUserNameSQL = `SELECT * FROM users_list u WHERE u.user_login_name = ?`;

const addUserSQL = `INSERT 
                ignore 
                INTO 
                users_list (user_login_name,user_password,user_name,gmt_create,gmt_modified) 
                VALUES 
                (?,?,?,CURRENT_TIME,CURRENT_TIME)`;

const addRolesSQL = `INSERT ignore 
                INTO users_roles (roles_name,gmt_create,gmt_modified)
                VALUES (?,CURRENT_TIME,CURRENT_TIME)
                `;

const addPermissionSQL = `INSERT ignore 
                       INTO users_permission (permission_name,gmt_create,gmt_modified) 
                       VALUES (?,CURRENT_TIME,CURRENT_TIME)`;

const delUserByIdSQL = `DELETE FROM users_list WHERE id=?`;

const delRoleByIdSQL = `DELETE FROM users_roles WHERE id=?`;

const delPermissionByIdSQL = `DELETE FROM users_permission WHERE id=?`;

const updateUserSQL = `UPDATE users_list SET user_login_name = ?,user_password=?,user_name=?,gmt_modified = CURRENT_TIME WHERE id=?`;

const updateRoleSQL = `UPDATE users_roles SET roles_name = ?,gmt_modified = CURRENT_TIME WHERE id=?`;

const updatePermissionSQL = `UPDATE users_permission SET permission_name = ?,gmt_modified = CURRENT_TIME WHERE id=?`;

const addRolesPermissionLinkSQL = `INSERT ignore INTO users_permission_link (roles_id,permission_id,gmt_create,gmt_modified) 
                                VALUES (?,?,CURRENT_TIME,CURRENT_TIME)`;

const addUserRolesLinkSQL = `
                            INSERT ignore INTO users_roles_link (user_id,roles_id,gmt_create,gmt_modified) 
                            VALUES (?,?,CURRENT_TIME,CURRENT_TIME)
`;

const getUserRoleSQL = `SELECT users_list.id, users_list.user_login_name, users_list.user_name, users_roles.roles_name 
                    FROM users_list,users_roles,users_roles_link 
                    WHERE users_list.id = users_roles_link.user_id AND users_roles.id = users_roles_link.roles_id
                    `;

const getRolePermissionSQL = `SELECT r.roles_name,p.permission_name FROM users_roles AS r ,users_permission AS p ,roles_permission_link AS rp 
WHERE r.id = rp.roles_id AND p.id = rp.permission_id
`;

module.exports = {
    countsUserSQL,
    listUsersSQL,
    listRolesSQL,
    listPermissionSQL,
    countsRolesSQL,
    countsPermissionSQL,
    getUserByUserNameSQL,
    addUserSQL,
    addRolesSQL,
    addPermissionSQL,
    delUserByIdSQL,
    delRoleByIdSQL,
    delPermissionByIdSQL,
    updateUserSQL,
    updateRoleSQL,
    updatePermissionSQL,
    addRolesPermissionLinkSQL,
    addUserRolesLinkSQL,
    getUserRoleSQL,
    getRolePermissionSQL
};