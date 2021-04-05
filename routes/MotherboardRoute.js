const router = require('express').Router();
const MotherBoardController = require('../controllers/MotherBoardController');

router.get('/api/motherboard', MotherBoardController.index);

module.exports = router;
