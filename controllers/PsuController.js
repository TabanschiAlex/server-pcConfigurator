const Psu = require('../models/PsuModel');

class PsuController {
    static async index(req, res) {
        res.json(await Psu.list());
    }
}

module.exports = PsuController;
