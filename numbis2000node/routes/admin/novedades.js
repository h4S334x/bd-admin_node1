var session = require('express-session');
var express = require('express');
var router = express.Router();

/* GET: muestra el formulario */
router.get('/', function (req, res, next) {
  res.render('admin/novedades', {
    layout: 'admin/layout',
    usuario: req.session.nombre
  });
});

module.exports = router;