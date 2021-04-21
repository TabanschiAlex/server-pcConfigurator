const router = require('express').Router();
const CpuController = require('../controllers/CpuController');

router.get('/cpu', CpuController.index);

module.exports = router;
