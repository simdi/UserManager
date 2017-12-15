var express = require('express');
var jsend = require('jsend');
var app = express();
var db = require('./db');

var UserController = require('./user/UserController');
app.use(jsend.middleware);
app.use('/users', UserController);

module.exports = app;