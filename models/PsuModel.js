const MainModel = require("./MainModel");

class PsuModel extends MainModel {
    table = 'psu';
}

module.exports = new PsuModel();
