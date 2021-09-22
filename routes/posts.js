const express = require('express');
const router = express.Router();
const posts = require('../controllers/posts');

app.get('/posts', posts.index);

app.get('/posts/new', (req, res) => {
	res.render('posts/new');
});

app.get('/posts/:id', (req, res) => {
	res.render('posts/show');
});

app.get('/posts/:id/edit', (req, res) => {
	res.render('posts/edit');
});

router.route('/')
	.get()