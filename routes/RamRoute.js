const router = require('express').Router();
const RamController = require('../controllers/RamController');

router.get('/ram', RamController.index);

module.exports = router;
