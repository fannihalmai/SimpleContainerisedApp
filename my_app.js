// This is a simple app made for my docker article on machinelearnit.com

'use strict';

var express = require('express'),
    app = express();

app.set('views', 'views');
app.set('view engine', 'pug');

app.get('/', function(req, res) {
    res.render('home', {
  });
});

app.listen(8989);
module.exports.getApp = app;
