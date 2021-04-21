const router = require('express').Router();
const KeyboardController = require('../controllers/KeyboardController');

router.get('/keyboard', KeyboardController.index);

module.exports = router;
