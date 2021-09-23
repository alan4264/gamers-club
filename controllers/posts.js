// const {Sequelize, DataTypes} = require("sequelize");
// const sequelize = new Sequelize("")
const Post = require('../models/post');

module.exports.index = function (req, res) {
	res.render('posts/index');
}

module.exports.renderNewForm = function (req, res) {
	res.render('posts/new');
}

module.exports.show = async function (req, res) {
	const val = await Post.f();
	const a = val;
	const b = val;
	res.render('posts/show', {a, b});
}

module.exports.renderEditForm = function (req, res) {
	res.render('posts/edit');
}