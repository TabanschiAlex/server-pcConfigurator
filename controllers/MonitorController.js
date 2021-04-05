const Monitor = require('../models/MonitorModel');

class MonitorController {
    static async index(req, res) {
        res.json(await Monitor.list());
    }
}

module.exports = MonitorController;

