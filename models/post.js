const dbConnection = require('../config/db');

Post = new Object();
Post.findById = async function findById(id) {
	const query = "SELECT * FROM posts WHERE id = ?";
	const params = [ id ];
	// console.log(query);
	// console.log(params);
	const [ posts ] = await dbConnection.promise().query(query, params);
	return posts.length == 0 ? null : posts[0];
}
Post.findByCategory = async (category) => {
	const query = "SELECT * FROM posts WHERE category = ?";
	const params = [ category ];
	const [ posts ] = await dbConnection.promise().query(query, params);
	return posts;
}
Post.findAll = async function findAll() {
	const query = "SELECT * FROM posts";
	const [posts] = await dbConnection.promise().query(query);
	return posts;
}
Post.create = async function create(post) {
	const query = "INSERT INTO posts(title, image_url, content, author_username, category) VALUES (?, ?, ?, ?, ?)";
	const params = [ post.title, post.image_url, post.content, post.author_username, post.category ];
	const [result] = await dbConnection.promise().query(query, params);
	return result.insertId;
}
Post.findByIdAndDelete = async (id) => {
	const query = "DELETE FROM posts WHERE id = ?";
	const params = [ id ];
	await dbConnection.promise().query(query, params);
}
Post.findByIdAndUpdate = async (id, post) => {
	const query = "UPDATE posts SET title = ?, image_url = ?, content = ?, category = ? WHERE id = ?";
	const params = [ post.title, post.image_url, post.content, post.category, id ];
	await dbConnection.promise().query(query, params);
}

module.exports = Post;
