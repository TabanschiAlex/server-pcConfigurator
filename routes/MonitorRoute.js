const router = require('express').Router();
const MonitorController = require('../controllers/MonitorController');

router.get('/monitor', MonitorController.index);

module.exports = router;
