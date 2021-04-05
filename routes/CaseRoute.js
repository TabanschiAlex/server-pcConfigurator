const router = require('express').Router();
const CaseController = require('../controllers/CaseController');

router.get('/api/case', CaseController.index);
router.post('/api/case', CaseController.create);
router.put('/api/case/:id', CaseController.edit);
router.delete('/api/case/:id', CaseController.destroy);

module.exports = router;
