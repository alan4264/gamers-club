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
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("When you build your first train network", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632864971/gamers-club/download_ssqqtf.gif", "", "a", 'Base Building', 'Factorio');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("If a wrong item is on the belt", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632867266/gamers-club/download_1_xrqtzl.gif", "", "a", 'Base Building', 'Factorio');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Track-making Train", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632867686/gamers-club/download_2_tnpjbr.gif", "this was the most fun thing I have accidentally done in factorio so far and I've enjoyed lots of things about this game", "a", 'Base Building', 'Factorio');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Beach Farm", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632868127/gamers-club/download_ipm68m.jpg", "", "a", 'Base Building', 'Stardew Valley');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Let's take a walk", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632868270/gamers-club/download_1_fekm7s.jpg", "Vincent , Jas and Penny", "a", 'Base Building', 'Stardew Valley');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Marnie's family", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632868514/gamers-club/download_2_cjayhn.jpg", "", "a", 'Base Building', 'Stardew Valley');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Evaluation", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632868788/gamers-club/download_rzphsm.jpg", "Sometimes some of the animals in the coop don't produce anything at all. When I first started playing it was very obvious which one of my chickens wouldn't fork over the goods.", "a", 'Base Building', 'Stardew Valley');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Dont kill me", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632869791/gamers-club/download_s6ovyb.gif", "", "a", 'FPS', 'CS: GO');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Surprise", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632870070/gamers-club/download_1_kozyhn.gif", "", "a", 'FPS', 'CS: GO');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Silver Rank", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632870212/gamers-club/download_2_wcsqvu.gif", "", "a", 'FPS', 'CS: GO');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("When you're bored of the main quest...", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632880920/gamers-club/download_yaten4.gif", "", "a", 'FPS', 'PUBG: BATTLEGROUNDS');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Praise The Pan", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632881226/gamers-club/1501854226_winv3_sict3p.gif", "He Protec, but He Also Attac", "a", 'FPS', 'PUBG: BATTLEGROUNDS');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Car", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632881446/gamers-club/download_xd2lst.jpg", "", "a", 'FPS', 'PUBG: BATTLEGROUNDS');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("road kill evasion", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632881508/gamers-club/download_1_m1myan.gif", "LOL", "a", 'FPS', 'PUBG: BATTLEGROUNDS');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("title", "image_url", "content", "a", 'FPS', 'PUBG: BATTLEGROUNDS');

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

