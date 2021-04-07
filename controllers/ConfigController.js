const Config = require('../models/Config');

class CaseController {
    static async index(req, res) {
        res.json(await Config.list());
    }

    static async create(req, res) {
        res.json(await Config.add(req.body));
    }

    static async edit(req, res) {

    }

    static async destroy(req, res) {

    }
}

module.exports = CaseController;
