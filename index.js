var express = require('express');
var ejs = require('ejs');

var GLOBAL = {};

var app = express();

//opening html file 
app.use(express.static('public'));
app.set('view engine', 'ejs');


app.listen(8080);

app.get('/', function(req, res){

    res.render('pages/login')

});

