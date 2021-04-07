const router = require('express').Router();
const bodyParser = require('body-parser');
const AuthController = require('../controllers/AuthController');

const urlencodedParser = bodyParser.urlencoded({extended: false});

router.post('/register', urlencodedParser, AuthController.register);
router.post('/login', urlencodedParser, AuthController.login)

module.exports = router;
