const router = require('express').Router();
const MonitorController = require('../controllers/MonitorController');

router.get('/api/monitor', MonitorController.index);

module.exports = router;
