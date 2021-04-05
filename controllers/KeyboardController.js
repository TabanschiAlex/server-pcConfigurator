const Keyboard = require('../models/KeyboardModel');

class KeyboardController {
    static async index(req, res) {
        res.json(await Keyboard.list());
    }
}

module.exports = KeyboardController;
