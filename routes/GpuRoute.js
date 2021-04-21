const router = require('express').Router();
const GpuController = require('../controllers/GpuController');

router.get('/gpu', GpuController.index);

module.exports = router;
