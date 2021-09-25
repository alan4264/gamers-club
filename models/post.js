const dbConnection = require('../config/db');

Post = new Object();
Post.findById = async function findById(id) {
	const query = "SELECT * FROM posts WHERE id = ?";
	const params = [ id ];
	const [posts] = await dbConnection.promise().query(query, params);
	return posts.length == 0 ? null : posts[0];
}
Post.findAll = async function findAll() {
	const query = "SELECT * FROM posts";
	const [posts] = await dbConnection.promise().query(query);
	return posts;
}
Post.create = async function create(post) {
	const query = "INSERT INTO posts(title, image_url, content) VALUES (?, ?, ?)";
	const params = [post.title, post.image_url, post.content];
	const [result] = await dbConnection.promise().query(query, params);
	return result.insertId;
}
module.exports = Post;
