const Post = require('../models/post');

module.exports.index = async (req, res) => {
	const posts = await Post.findAll();
	res.render('posts/index', { posts });
}

module.exports.renderNewForm = (req, res) => {
	res.render('posts/new');
}

module.exports.createPost = async (req, res) => {
	const newPostId = await Post.create(req.body.post);
	console.log(newPostId);
	req.flash('success', "Successfully created a new post.");
	res.redirect(`/posts/${newPostId}`);
}

module.exports.show = async (req, res) => {
	const post = await Post.findById(parseInt(req.params.id));
	if (post == null) {
		req.flash('error', 'Cannot find that post.');
		return res.redirect("/posts");
	} else {
		res.render('posts/show', { post });
	}

}

module.exports.renderEditForm = (req, res) => {
	res.render('posts/edit');
}