class MainModel {
    table;
    json;

    constructor() {
        this.db = require('../database/db');
    }

    async list() {
        try {
            return await this.db.query(`SELECT * FROM ${this.table}`);
        } catch (e) {
            console.log(e.message);
        }
    }

    async add(obj) {
        try {
            return await this.db.query(`INSERT INTO ${this.table} SET ?`, obj);
        } catch (e) {
            console.log(e.message);
        }
    }

    update(id) {

    }

    filter() {

    }

    removePhoto(id) {

    }

    delete(id) {
        this.db.query(
            `DELETE FROM ${this.table} 
                WHERE id = ${id}`,
            (error, results, fields) => {
            if (error) {
                console.log(error.sqlMessage)
            }
        });
    }
}

module.exports = MainModel;
