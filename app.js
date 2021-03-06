require('dotenv').config();
var express = require('express');
const session = require("express-session");
var ejsMate = require('ejs-mate');
const bodyParser = require('body-parser');
var postRoutes = require("./routes/posts");
const userRoutes = require('./routes/users');
const flash = require("connect-flash");
const passport = require('passport');
const methodOverride = require('method-override');
const path = require('path');
const ExpressError = require('./utils/ExpressError');
const posts = require('./controllers/posts');

var app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(methodOverride('_method'));

const sessionConfig = {
	secret: 'keyboard cat',
	resave: false,
	saveUninitialized: true,
	cookie: {
		// secure: true,
		maxAge: 60000 * 60 * 24 * 90 // === 90 days
	}
}
app.use(session(sessionConfig));
app.use(flash());

app.engine('ejs', ejsMate);
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
app.use(express.static(path.join(__dirname, 'public')));

// print the request:
app.use((req, res, next) => {
	console.log(req.method + ' ' + req.path + " " + JSON.stringify(req.body, null, 2));
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
	console.log(req.query);
	res.locals.currentUser = req.user;
	res.locals.success = req.flash("success");
	res.locals.error = req.flash("error");
	next();
})

app.use("/posts", postRoutes);
app.use('/users', userRoutes);

app.get('/', posts.index);


app.all('*', (req, res, next) => {
	next(new ExpressError('Page Not Found', 404));
});

app.use((err, req, res, next) => {
	const { statusCode = 500 } = err;
	if (!err.message) err.message = "Something went wrong.";
	res.status(statusCode).render('error', { err });
});

const port = process.env.PORT || 3000;
app.listen(port, function () {
	console.log("Server running on " + port);
});
