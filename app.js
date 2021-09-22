var express = require('express');
// var mysql = require('mysql');
var ejsMate = require('ejs-mate');
const { Sequelize } = require('sequelize');
var postRoutes = require("./routes/posts");

var app = express();

// var connection = mysql.createConnection({
// 	host: 'localhost',
// 	user: 'root',
// 	database : 'mysql'
// });
const sequelize = new Sequelize('mysql', 'root', '', {
		host: 'localhost',
		dialect: 'mysql'
});

( async() => {
try {
	const { QueryTypes } = require('sequelize');
	const posts = await sequelize.query("SELECT * FROM posts", { type: QueryTypes.SELECT });
	console.log(posts);
	// sequelize.authenticate();
	console.log('success ')
} catch (error) {
	console.log('error: ', error);
}
})();

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

app.use("/posts", postRoutes);

app.get('/', (req, res) => {
	res.render('home');
});

// app.get('/posts', (req, res) => {
// 	res.render('posts/index');
// });

// app.get('/posts/new', (req, res) => {
// 	res.render('posts/new');
// });

// app.get('/posts/:id', (req, res) => {
// 	res.render('posts/show');
// });

// app.get('/posts/:id/edit', (req, res) => {
// 	res.render('posts/edit');
// });

app.listen(3000, function() {
	console.log("Server running on 3030");
});