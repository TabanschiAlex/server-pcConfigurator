const router = require('express').Router();
const PsuController = require('../controllers/PsuController');

router.get('/api/psu', PsuController.index);

module.exports = router;
