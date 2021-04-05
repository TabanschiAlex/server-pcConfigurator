const util = require('util')
const mysql = require('mysql');

const db = mysql.createPool({
    connectionLimit : 15,
    host     : 'localhost',
    user     : 'root',
    password : 'root',
    database : 'configurator'
});

db.query = util.promisify(db.query);

module.exports = db;
