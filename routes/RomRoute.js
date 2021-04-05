const router = require('express').Router();
const RomController = require('../controllers/RomController');

router.get('/api/rom', RomController.index);

module.exports = router;
