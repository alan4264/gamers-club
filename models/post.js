const { Sequelize, DataTypes, QueryTypes } = require('sequelize');
const sequelize = new Sequelize('mysql', 'root', '', {
		host: 'localhost',
		dialect: 'mysql'
});

const Post = sequelize.define('Post', {
	id: {
		type: DataTypes.INTEGER,
		autoIncrement: true,
		primaryKey: true
	},
	title: {
		type: DataTypes.STRING(60),
		allowNull: false
	},
	content: {
		type: DataTypes.TEXT
	}
});
// , {
// 	classMethods: {
// 		f: function() {
// 			return "a";
// 		}
// 	}
// });
Post.findById = async function findById(id) {
	const post = await sequelize.query('SELECT * FROM posts WHERE id = ?;', {replacements: [id], type: QueryTypes.SELECT });
	console.log(post);
	return post[0];
}

module.exports = Post;
