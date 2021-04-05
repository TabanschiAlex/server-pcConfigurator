const router = require('express').Router();
const MouseController = require('../controllers/MouseController');

router.get('/api/mouse', MouseController.index);

module.exports = router;
