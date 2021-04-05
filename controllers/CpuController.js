const Cpu = require('../models/CpuModel');

class CpuController {
    static async index(req, res) {
        res.json(await Cpu.list());
    }
}

module.exports = CpuController;

