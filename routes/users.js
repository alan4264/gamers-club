const express = require('express');
const router = express.Router();
const users = require('../controllers/users');
const passport = require('passport');
const passportConfig = require('../config/passport');

passportConfig(passport);

router.route("/register")
	.get(users.renderRegister)
	.post(passport.authenticate('local-signup', { failureFlash: true, failureRedirect: '/users/register' }), 
		passport.authenticate('local-login', { failureFlash: true, failureRedirect: '/users/login' }),
		users.registerSuccessful);

router.route('/login')
	.get(users.renderLogin)
	.post(passport.authenticate('local-login', { failureFlash: true, failureRedirect: '/users/login' }), users.loginSuccessful);

router.route('/logout')
	.get(users.logout);

module.exports = router;
