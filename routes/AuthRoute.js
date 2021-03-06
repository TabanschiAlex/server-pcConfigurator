const router = require('express').Router();
const bodyParser = require('body-parser');
const AuthController = require('../controllers/AuthController');

const urlencodedParser = bodyParser.urlencoded({extended: false});

router.post('/register', urlencodedParser, AuthController.register);
router.post('/login', urlencodedParser, AuthController.login);
router.post('/logout', urlencodedParser, AuthController.logout);
router.post('/validateToken', urlencodedParser, AuthController.validateToken);

module.exports = router;
