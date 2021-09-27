const Post = require('../models/post');

module.exports.index = async (req, res) => {
	const posts = await Post.findAll();
	res.render('posts/index', { posts });
}

module.exports.renderNewForm = (req, res) => {
	res.render('posts/new');
}

module.exports.createPost = async (req, res) => {
	const newPost = req.body.post;
	newPost.author_username = req.user.username;
	const newPostId = await Post.create(newPost);
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

module.exports.deletePost = async (req, res) => {
	const { id } = req.params;
	await Post.findByIdAndDelete(id);
	req.flash('success', 'Successfully deleted post.');
	res.redirect('/posts');
}

module.exports.renderEditForm = (req, res) => {
	res.render('posts/edit');
}
