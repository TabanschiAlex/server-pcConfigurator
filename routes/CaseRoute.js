const router = require('express').Router();
const CaseController = require('../controllers/CaseController');

router.get('/case', CaseController.index);
router.post('/case', CaseController.create);
router.put('/case', CaseController.edit);
router.delete('/case', CaseController.destroy);

module.exports = router;
