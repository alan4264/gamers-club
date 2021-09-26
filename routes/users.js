const express = require('express');
const router = express.Router();
const users = require('../controllers/users');
const passport = require('passport');
const passportConfig = require('../config/passport');

passportConfig(passport);

router.route("/register")
	.get(users.renderRegister)
	.post(users.register);

router.route('/login')
	.get(users.renderLogin)
	.post(users.login);

router.route('/logout')
	.get(users.logout);



module.exports = router;