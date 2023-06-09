const express = require('express');
const router = express.Router();
const customerController = require('../controllers/controlador;')

router.get('/', controlador.list);
router.post('/add', controlador.save);
router.post('/delete/:id', controlador.delete);

router.get('/update/:id', controlador.edit);
router.post('/update/:id', controlador.update);

module.exports = router;