// const User = require('../models/user');

module.exports.renderRegister = function (req, res) {
	res.render('users/register');
}

// module.exports.register = async (req, res, next) => {
// 	try {
		
// 	} catch (e) {
// 		req.flash('error', e.message);
// 		res.redirect('/register');
// 	}
// }

module.exports.login = (req, res) => {
	req.flash('success', "You are logged in.");
	const redirectUrl = req.session.returnTo || '/posts';
	delete req.session.returnTo;
	res.redirect(redirectUrl);
}