const Rom = require('../models/RomModel');

class RomController {
    static async index(req, res) {
        res.json(await Rom.list());
    }
}

module.exports = RomController;
