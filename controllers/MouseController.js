const Mouse = require('../models/MouseModel');

class MouseController {
    static async index(req, res) {
        res.json(await Mouse.list());
    }
}

module.exports = MouseController;
