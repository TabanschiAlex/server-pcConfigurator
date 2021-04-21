const Configurator = require('../models/ConfiguratorModel');

class CaseController {
    static async index(req, res) {
        res.json(await Configurator.list());
    }

    static async create(req, res) {
        res.json(await Configurator.add(req.body.table, req.body.id));
    }

    static async edit(req, res) {
        res.json(await Configurator.update(req.body))
    }

    static async destroy(req, res) {
        res.json(await Configurator.delete(req.body.id));
    }
}

module.exports = CaseController;
