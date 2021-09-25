const express = require('express');
const router = express.Router();
const posts = require('../controllers/posts');

router.route("/")
	.get(posts.index)
	.post(posts.createPost);

router.route("/new")
	.get(posts.renderNewForm);

router.route("/:id")
	.get(posts.show);

router.route("/:id/edit")
	.get(posts.renderEditForm);

module.exports = router;