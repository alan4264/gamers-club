var express = require('express');
const session = require("express-session");
// var mysql = require('mysql');
var ejsMate = require('ejs-mate');
const bodyParser = require('body-parser');
const { Sequelize } = require('sequelize');
var postRoutes = require("./routes/posts");
const userRoutes = require('./routes/users');
const flash = require("connect-flash");

var app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true}));

// From express-session npm page:
const sessionConfig = {
	secret: 'keyboard cat',
	resave: false,
	saveUninitialized: true,
	cookie: {
		// secure: true,
		maxAge: 60000
	}
}
app.use(session(sessionConfig));
app.use(flash());

// mysql connection:
// var connection = mysql.createConnection({
// 	host: 'localhost',
// 	user: 'root',
// 	database : 'mysql'
// });
const sequelize = new Sequelize('mysql', 'root', '', {
		host: 'localhost',
		dialect: 'mysql'
});

app.engine('ejs', ejsMate);
app.set('view engine', 'ejs');

app.use((req, res, next) => {
	console.log(req.method + ' ' + req.path);
	next();
})

app.use("/posts", postRoutes);
app.use('/users', userRoutes);

app.get('/', (req, res) => {
	res.render('home');
});

app.listen(3000, function() {
	console.log("Server running on 3000");
});