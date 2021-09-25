// const { Sequelize, DataTypes, QueryTypes } = require('sequelize');
// const sequelize = new Sequelize('mysql', 'root', '', {
// 		host: 'localhost',
// 		dialect: 'mysql'
// });

// // Maybe I don't need this part. Use mysql instead, no sequelize.
// const Post = sequelize.define('Post', {
// 	id: {
// 		type: DataTypes.INTEGER,
// 		autoIncrement: true,
// 		primaryKey: true
// 	},
// 	title: {
// 		type: DataTypes.STRING(60),
// 		allowNull: false
// 	},
// 	content: {
// 		type: DataTypes.TEXT
// 	}
// });

// const mysql = require('mysql2');
const dbConnection = require('../config/db');
// const connection = mysql.createConnection({
// 	host: 'localhost',
// 	user: 'root',
// 	// password: '',
// 	database: 'gamers_club'
// });
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
