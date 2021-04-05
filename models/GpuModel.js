const MainModel = require("./MainModel");

class GpuModel extends MainModel {
    table = 'gpu';
}

module.exports = new GpuModel();
