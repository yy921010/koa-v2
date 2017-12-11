class RespModel {
    constructor(title, datas, retCode = 0) {
        this.title = title;
        this.datas = datas;
        this.retCode = retCode;
    }

    getModel() {
        return {
            title: this.title,
            datas: this.datas,
            retCode: this.retCode
        }
    }
}

module.exports = RespModel;