const jwt = require('jsonwebtoken');
const util = require('util');
const logger = require('../utils/logsTools').getLogger('permiddleware.js');
module.exports = {
    checkPers(ctx, next) {
        logger.info(jwt.verify());
        next()
    }
};