// const User = require('../models/user');

module.exports.renderRegister = function (req, res) {
	res.render('users/register');
}

module.exports.register = async (req, res, next) => {
	try {
		await passport.authenticate('local-signup', { failureFlash: true, failureRedirect: '/users/register' });
		await passport.authenticate('local-login', { failureFlash: true, failureRedirect: '/users/login' });
	} catch (e) {
		req.flash('error', e.message);
		res.redirect('/users/register');
	}
}

module.exports.renderLogin = (req, res) => {
	res.render('/users/login');
}

module.exports.login = async (req, res) => {
	try {
		await passport.authenticate('local-login', { failureFlash: true, failureRedirect: '/users/login' });
		req.flash('success', "Welcome back!");
		const redirectUrl = req.session.returnTo || '/posts';
		delete req.session.returnTo;
		res.redirect(redirectUrl);
	} catch (e) {
		req.flash('error', e.message);
		res.redirect('/users/login')
	}
}

module.exports.logout = (req, res) => {
	req.logout();
	req.flash('success', 'Bye!');
	res.redirect('/posts');
}