const MainModel = require("./MainModel");

class MotherboardModel extends MainModel {
    table = 'motherboard';
}

module.exports = new MotherboardModel();
