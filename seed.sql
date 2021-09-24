USE gamers_club;

DROP TABLE users;
CREATE TABLE users (
    username VARCHAR(50) PRIMARY KEY, 
    password VARCHAR(50) NOT NULL
);
INSERT INTO users(username, password) VALUES ("a", "a");

DROP TABLE posts;
CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(60) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    content TEXT
    # author_id INT NOT NULL,
    # game_id INT NOT NULL,
    # created_at TIMESTAMP DEFAULT NOW(),
    # FOREIGN KEY (author_id) REFERENCES users(id)
);
INSERT INTO posts(title, image_url, content) VALUES ("Post 1", "https://res.cloudinary.com/df3vvd3/image/upload/v1626293680/loxsihspedpwqllidiip.jpg", "Look at this!");
INSERT INTO posts(title, image_url, content) VALUES ("Post 2", "https://res.cloudinary.com/df3vvd3/image/upload/v1626293680/loxsihspedpwqllidiip.jpg", "Look at this!");
INSERT INTO posts(title, image_url, content) VALUES ("Post 3", "https://res.cloudinary.com/df3vvd3/image/upload/v1626293680/loxsihspedpwqllidiip.jpg", "Look at this!");
INSERT INTO posts(title, image_url, content) VALUES ("Post 4", "https://res.cloudinary.com/df3vvd3/image/upload/v1626293680/loxsihspedpwqllidiip.jpg", "Look at this!");
INSERT INTO posts(title, image_url, content) VALUES ("Post 5", "https://res.cloudinary.com/df3vvd3/image/upload/v1626293680/loxsihspedpwqllidiip.jpg", "Look at this!");
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

