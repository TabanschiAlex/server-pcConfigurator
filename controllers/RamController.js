const Ram = require('../models/RamModel');

class RamController {
    static async index(req, res) {
        res.json(await Ram.list());
    }
}

module.exports = RamController;
