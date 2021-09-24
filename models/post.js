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

const mysql = require('mysql2');
const connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'gamers_club'
});
Post = new Object();
Post.findById = async function findById(id) {
	var q = "SELECT * FROM posts WHERE id = " + id;
	const [ post ] = await connection.promise().query(q);
	console.log(post);
	return post.length == 0 ? null : post[0];
}

module.exports = Post;
