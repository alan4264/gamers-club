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
	const post = await Post.findById(parseInt(req.params.id));
	if (post == null) {
		req.flash('info', 'Cannot find that post.');
		return res.redirect("/posts");
	} else {
		res.render('posts/show', { post });
	}
	
}

module.exports.renderEditForm = function (req, res) {
	res.render('posts/edit');
}