const MainModel = require("./MainModel");

class MonitorModel extends MainModel {
    table = 'monitor';
}

module.exports = new MonitorModel();
