const respModel = require('../models/resp.model');

module.exports = (ctx, next) => {
    switch (ctx.dataType) {
        case 'COMBINATION':
            ctx.body = new respModel(ctx.dataMethod, ctx.dataServices);
            ctx.response.type = 'json';
            break;
        default:
            ctx.response.type = 'text';
            ctx.body = 'no datas!';
            break;
    }
};