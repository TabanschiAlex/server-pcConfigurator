const MainModel = require("./MainModel");

class ConfigModel extends MainModel {
    table = 'config';

    async list() {
        try {
            return await this.db.query(`SELECT * FROM ${this.table}`);
        } catch (e) {
            console.log(e.message);
        }
    }
}

module.exports = new ConfigModel();
