var express = require('express');
const session = require("express-session");
// var mysql = require('mysql');
var ejsMate = require('ejs-mate');
const bodyParser = require('body-parser');
const { Sequelize } = require('sequelize');
var postRoutes = require("./routes/posts");
const userRoutes = require('./routes/users');
const flash = require("connect-flash");
const passport = require('passport');
const methodOverride = require('method-override');
const path = require('path');
const ExpressError = require('./utils/ExpressError');

var app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true}));
app.use(methodOverride('_method'));

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
app.set('views', path.join(__dirname, 'views'));

// print the request:
app.use((req, res, next) => {
	console.log(req.method + ' ' + req.path + " " + JSON.stringify(res.body, null, 2));
	next();
})

// app.post(function (req, res) {
//   res.setHeader('Content-Type', 'text/plain')
//   res.write('you posted:\n')
//   res.end(JSON.stringify(req.body, null, 2))
// })

app.use(passport.initialize());
app.use(passport.session());

app.use((req, res, next) => {
	// console.log(req.query);
	res.locals.currentUser = req.user;
	res.locals.success = req.flash("success");
	res.locals.error = req.flash("error");
	next();
})

app.use("/posts", postRoutes);
app.use('/users', userRoutes);

app.get('/', (req, res) => {
	res.render('home');
});

app.all('*', (req, res, next) => {
	next(new ExpressError('Page Not Found', 404));
});

app.use((err, req, res, next) => {
	const { statusCode = 500 } = err;
	if (!err.message) err.message = "Something went wrong.";
	res.status(statusCode).render('error', {err});
});

app.listen(3000, function() {
	console.log("Server running on 3000");
});