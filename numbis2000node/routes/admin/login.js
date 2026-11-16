var session = require('express-session');
var express = require('express');
var router = express.Router();
var usuariosModel = require('./../../models/usuariosModel');

/* GET: muestra el formulario */
router.get('/', function (req, res, next) {
  res.render('admin/login', {
    layout: 'admin/layout'
  });
});

/* POST: procesa el login */
router.post('/', async (req, res, next) => {
  try {
    var usuario = req.body.usuario; // user augusto y pass 5678, borrar este dato despues , o flavia 1234 usuario profe, borrar tb 
    var password = req.body.password;

    console.log(req.body);

    var data = await usuariosModel.getUserByUsernameAndPassword(usuario, password);

    console.log(data);

    if (data != undefined) {
      req.session.id_usuario = data.id;
      req.session.nombre = data.usuario;
      res.redirect('/admin/novedades');
    } else {
      res.render('admin/login', {
        layout: 'admin/layout',
        error: true
      });
    } // cierre else
  } catch (error) {
    console.log(error);
    res.render('admin/login', {
      layout: 'admin/layout',
      error: true
    });
  }
}); // cierra el post

/* GET /logout: cierra la sesión */
router.get('/logout', function (req, res, next) {
  req.session.destroy();
  res.render('admin/login', {
    layout: 'admin/layout'
  });
});

module.exports = router;