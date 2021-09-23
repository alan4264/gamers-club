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
Post.f = async function() {
	const val = await sequelize.query('select * from posts;', { type: QueryTypes.SELECT});
	console.log(val);
	return val[0].id;
}

module.exports = Post;
