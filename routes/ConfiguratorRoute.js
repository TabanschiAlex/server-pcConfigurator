const router = require('express').Router();
const ConfigController = require('../controllers/ConfiguratorController');

router.get('/config', ConfigController.index);
router.post('/config', ConfigController.create);
router.put('/config', ConfigController.edit);
router.delete('/config', ConfigController.destroy);

module.exports = router;
