const MainModel = require("./MainModel");

class RamModel extends MainModel {
    table = 'ram';
}

module.exports = new RamModel();
