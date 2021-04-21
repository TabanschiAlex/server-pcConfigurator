const MainModel = require("./MainModel");

class ConfiguratorModel extends MainModel {
    table = 'config';

    async list() {
        try {
            return await this.db.query(`SELECT * FROM ${this.table}`);
        } catch (e) {
            console.log(e.message);
        }
    }

    async add(table, id) {
        return await this.db.query(
            `INSERT INTO
                ${this.table}
             `
        )
    }

    async delete(id) {

    }
}

module.exports = new ConfiguratorModel();
