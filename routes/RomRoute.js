const router = require('express').Router();
const RomController = require('../controllers/RomController');

router.get('/rom', RomController.index);

module.exports = router;
