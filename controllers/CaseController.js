const Case = require('../models/CaseModel');

class CaseController {
    static async index(req, res) {
        res.json(await Case.list());
    }

    static async create(req, res) {
        res.json(await Case.add(req.body));
    }

    static async edit(req, res) {

    }

    static async destroy(req, res) {

    }
}

module.exports = CaseController;
