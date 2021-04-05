const Gpu = require('../models/GpuModel');

class GpuController {
    static async index(req, res) {
        res.json(await Gpu.list());
    }
}

module.exports = GpuController;
