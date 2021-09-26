const passport = require('passport');
const passportConfig = require('../config/passport');

passportConfig(passport);

module.exports.renderRegister = (req, res) => {
	res.render('users/register');
}

module.exports.registerSuccessful = async (req, res, next) => {
	try {
		
		req.flash('success', 'Wecome to Gamers Club!');
		res.redirect('/posts');
	} catch (e) {
		req.flash('error', e.message);
		res.redirect('/users/register');
	}
}

module.exports.renderLogin = (req, res) => {
	res.render('users/login');
}

module.exports.login = async (req, res) => {
	try {
		req.flash('success', "Welcome back!");
		const redirectUrl = req.session.returnTo || '/posts';
		delete req.session.returnTo;
		res.redirect(redirectUrl);
	} catch (e) {
		req.flash('error', e.message);
		res.redirect('/users/login');
	}
}

module.exports.logout = (req, res) => {
	req.logout();
	req.flash('success', 'Bye!');
	res.redirect('/posts');
}
