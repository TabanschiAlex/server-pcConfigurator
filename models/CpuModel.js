const MainModel = require("./MainModel");

class CpuModel extends MainModel {
    table = 'cpu';
}

module.exports = new CpuModel();
