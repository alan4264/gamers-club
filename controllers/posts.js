module.exports.index = function (req, res) {
	res.render('posts/index');
}

module.exports.renderNewForm = function (req, res) {
	res.render('posts/new');
}

module.exports.show = function (req, res) {
	res.render('posts/show');
}

module.exports.renderEditForm = function (req, res) {
	res.render('posts/edit');
}