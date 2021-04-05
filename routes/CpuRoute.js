const router = require('express').Router();
const CpuController = require('../controllers/CpuController');

router.get('/api/cpu', CpuController.index);

module.exports = router;
