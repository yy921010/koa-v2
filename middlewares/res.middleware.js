const respModel = require('../models/resp.model');

module.exports = async (ctx, next) => {
    switch (ctx.dataType) {
        case 'COMBINATION':
            ctx.body = new respModel(ctx.dataMethod, ctx.dataServices);
            ctx.response.type = 'json';
            break;
        case 'COMMIT_STATUS':
            ctx.body = new respModel(ctx.dataMethod, ctx.dataServices, ctx.retCode);
            ctx.response.type = 'json';
            break;
        default:
            ctx.response.type = 'text';
            ctx.body = 'no datas!';
            break;

    }
};