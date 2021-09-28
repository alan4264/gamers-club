const express = require('express');
const router = express.Router();
const posts = require('../controllers/posts');
const { isLoggedIn, isAuthor } = require('../middleware');

router.route("/")
	.get(posts.index)
	.post(isLoggedIn, posts.createPost);

router.route("/new")
	.get(isLoggedIn, posts.renderNewForm);

router.route("/categories/:category")
	.get(posts.indexByCategory);

router.route("/:id")
	.get(posts.show)
	.put(isLoggedIn, isAuthor, posts.editPost)
	.delete(isLoggedIn, isAuthor, posts.deletePost);

router.route("/:id/edit")
	.get(posts.renderEditForm);

module.exports = router;