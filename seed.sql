DROP DATABASE IF EXISTS gamers_club;
CREATE DATABASE gamers_club;
USE gamers_club;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    username VARCHAR(50) PRIMARY KEY, 
    password VARCHAR(50) NOT NULL
);
INSERT INTO users(username, password) VALUES ("a", "a");
INSERT INTO users(username, password) VALUES ("b", "b");

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(60) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    content TEXT,
    author_username VARCHAR(50) NOT NULL,
    category ENUM('FPS', 'Base Building', 'Racing', 'Strategy', 'Sports'),
    game_name VARCHAR(60),
    # created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (author_username) REFERENCES users(username)
);
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("When you build your first train network", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632864971/gamers-club/download_ssqqtf.gif", "Look at this!", "a", 'Base Building', 'Factorio');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("If a wrong item is on the belt", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632867266/gamers-club/download_1_xrqtzl.gif", "Look at this!", "b", 'Base Building', 'Factorio');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Post 3", "https://res.cloudinary.com/df3vvd3/image/upload/v1626293680/loxsihspedpwqllidiip.jpg", "Look at this!", "b", 'Racing', 'GameName');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Post 4", "https://res.cloudinary.com/df3vvd3/image/upload/v1626293680/loxsihspedpwqllidiip.jpg", "Look at this!", "a", 'Strategy', 'GameName');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Post 5", "https://res.cloudinary.com/df3vvd3/image/upload/v1626293680/loxsihspedpwqllidiip.jpg", "Look at this!", "a", 'Sports', 'GameName');
# CREATE TABLE comments (
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     text_content VARCHAR(255) NOT NULL,
#     commenter_id INT NOT NULL,
#     post_id INT NOT NULL,
#     FOREIGN KEY (commenter_id) REFERENCES users(id),
#     FOREIGN KEY (post_id) REFERENCES posts(id)
# );

# CREATE TABLE likes (
#     liker_id INT NOT NULL,
#     post_id INT NOT NULL, 
#     FOREIGN KEY (liker_id) REFERENCES users(id),
#     FOREIGN KEY (post_id) REFERENCES posts(id),
#     PRIMARY KEY (liker_id, post_id)
# );

# CREATE TABLE games (
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     name VARCHAR(255) NOT NULL,
#     store_url VARCHAR(255) NOT NULL
# );

# CREATE TABLE categories (
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     name VARCHAR(255) NOT NULL
# );

# Uninplemented tables:

# CREATE TABLE images (
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     url VARCHAR(255) NOT NULL
# );
# INSERT INTO images(url) VALUES ("https://res.cloudinary.com/df3vvd3/image/upload/v1626293680/loxsihspedpwqllidiip.jpg");
# CREATE TABLE post_images (
#     post_id INT NOT NULL,
#     image_id INT NOT NULL,
#     FOREIGN KEY (post_id) REFERENCES posts(id),
#     FOREIGN KEY (image_id) REFERENCES images(id)
# );

