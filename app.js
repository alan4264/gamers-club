// var faker = require('faker');

var express = require('express');
var mysql = require('mysql');
var ejsMate = require('ejs-mate');

var app = express();

var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	database : 'mysql'
});

app.engine('ejs', ejsMate);
app.set('view engine', 'ejs');

// app.get("/", function(req, res) {
// 	var q = "SELECT COUNT(*) AS count FROM users";
// 	connection.query(q, function(error, results) {
// 		if (error) throw error;
// 		var msg = results[0].count;
// 		res.send("dddddddddd");
// 	});
// });

app.get('/', (req, res) => {
	res.render('home');
});

app.listen(3000, function() {
	console.log("Server running on 3030");
});