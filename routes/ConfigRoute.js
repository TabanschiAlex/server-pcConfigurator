const router = require('express').Router();
const ConfigController = require('../controllers/ConfigController');

router.get('/api/case', ConfigController.index);
router.post('/api/case', ConfigController.create);
router.put('/api/case/:id', ConfigController.edit);
router.delete('/api/case/:id', ConfigController.destroy);

module.exports = router;
