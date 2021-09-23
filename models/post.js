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

Post.findById = async function findById(id) {
	const post = await sequelize.query('SELECT * FROM posts WHERE id = ?;', {replacements: [id], type: QueryTypes.SELECT });
	return (post.length == 1 ? post[0] : null);
}

module.exports = Post;
