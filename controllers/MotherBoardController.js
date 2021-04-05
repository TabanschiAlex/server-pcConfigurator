const Motherboard = require('../models/MotherboardModel');

class MotherBoardController {
    static async index(req, res) {
        res.json(await Motherboard.list());
    }
}

module.exports = MotherBoardController;
