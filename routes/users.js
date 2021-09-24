const express = require('express');
const router = express.Router();
const users = require('../controllers/users');
const passport = require('passport');
const passportConfig = require('../config/passport');

passportConfig(passport);

router.route("/register")
	.get(users.renderRegister)
	.post(passport.authenticate('local-signup', { failureFlash: true, failureRedirect: '/posts'}), users.renderRegister);

module.exports = router;