const dbConnection = require('../config/db');

Post = new Object();
Post.findById = async function findById(id) {
	const query = "SELECT * FROM posts WHERE id = " + id;
	const [posts] = await dbConnection.promise().query(query);
	return posts.length == 0 ? null : posts[0];
}
Post.findAll = async function findAll() {
	const query = "SELECT * FROM posts";
	const [posts] = await dbConnection.promise().query(query);
	return posts;
}
module.exports = Post;
