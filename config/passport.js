const LocalStrategy = require('passport-local').Strategy;
const dbConnection = require('./db');

module.exports = function (passport) {
	passport.serializeUser((userObject, callback) => {
		console.log("passport.serializeUser");
		callback(null, userObject.username);
	});
	passport.deserializeUser((username, callback) => {
		console.log("passport.deserializeUser");
		dbConnection.query("SELECT * FROM users WHERE username = '" + username + "'", (err, userList) => {
			if (err) throw err;
			return callback(err, userList[0])
		});
	});
	passport.use('local-signup', new LocalStrategy(
		{
			usernameField: 'username', // same as default
			passwordFiled: 'password', // same as default
			passReqToCallback: true
		},
		function (req, username, password, callback) {
			const q = "SELECT * FROM users WHERE username = '" + username + "'";
			console.log(q);
			dbConnection.query(q, (err, userList) => {
				if (err) return callback(err);
				if (userList.length) {
					return callback(null, false, req.flash('error', 'The username is already taken.'));
				} else {
					var newUser = new Object();
					newUser.username = username;
					newUser.password = password;
					var q = "INSERT INTO users(username, password) VALUES ('" + username + "', '" + password + "')";
					console.log(q);
					dbConnection.query(q, (err, results) => {
						if (err) throw err;
						return callback(null, newUser);
					})
				}
			});
		}));
	passport.use('local-login', new LocalStrategy(
		{
			usernameField: 'username', // same as default
			passwordField: 'password', // same as default
			passReqToCallback: true
		},
		function (req, username, password, callback) {
			dbConnection.query("SELECT * FROM users WHERE username = " + username, function (err, rows) {
				if (err) return callback(err);
				if (!rows.length) {
					return callback(null, false, req.flash('error', 'No user found.'));
				}
				if (rows[0].password != password) {
					return callback(null, false, req.flash('error', 'Wrong password.'));
				}
				return callback(null, rows[0]);
			});
		}
	));
}