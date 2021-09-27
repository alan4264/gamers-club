const Post = require('./models/post');

module.exports.isLoggedIn = (req, res, next) => {
    if (!req.isAuthenticated()) {
        req.session.returnTo = req.originalUrl;
        req.flash('error', 'You must be signed in first!');
        return res.redirect('/users/login');
    }
    next();
}

module.exports.isAuthor = async (req, res, next) => {
    const { id } = req.params;
    const post = await Post.findById(id);
    if (!post.author_username.equals(req.user.username)) {
        req.flash('error', 'You do not have permission to do that.');
        return res.redirect(`/posts/${id}`);
    }
    next();
}
