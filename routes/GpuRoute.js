const router = require('express').Router();
const GpuController = require('../controllers/GpuController');

router.get('/api/gpu', GpuController.index);

module.exports = router;
