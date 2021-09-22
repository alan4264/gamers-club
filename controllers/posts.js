// const {Sequelize, DataTypes} = require("sequelize");
// const sequelize = new Sequelize("")

module.exports.index = function (req, res) {
	res.render('posts/index');
}

module.exports.renderNewForm = function (req, res) {
	res.render('posts/new');
}

module.exports.show = function (req, res) {
	const a = 1;
	const b = 2;
	res.render('posts/show', {a, b});
}

module.exports.renderEditForm = function (req, res) {
	res.render('posts/edit');
}