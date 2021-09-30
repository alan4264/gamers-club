-- DROP DATABASE IF EXISTS gamers_club;
-- CREATE DATABASE gamers_club;
-- USE gamers_club;

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
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Beach Farm", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632868127/gamers-club/download_ipm68m.jpg", "beautiful farm", "a", 'Base Building', 'Stardew Valley');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Surprise", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632870070/gamers-club/download_1_kozyhn.gif", "surprise!", "a", 'FPS', 'CS: GO');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("road kill evasion", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632881508/gamers-club/download_1_m1myan.gif", "LOL", "a", 'FPS', 'PUBG: BATTLEGROUNDS');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Echo Slam", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632950116/gamers-club/download_1_ron70x.gif", "https://www.twitch.tv/raydenovich", "a", 'Strategy', "Dota 2");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("When you build your first train network", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632864971/gamers-club/download_ssqqtf.gif", "and failed", "a", 'Base Building', 'Factorio');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("If a wrong item is on the belt", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632867266/gamers-club/download_1_xrqtzl.gif", "The belt will never work properly after that.", "a", 'Base Building', 'Factorio');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Track-making Train", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632867686/gamers-club/download_2_tnpjbr.gif", "this was the most fun thing I have accidentally done in factorio so far and I've enjoyed lots of things about this game", "a", 'Base Building', 'Factorio');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Let's take a walk", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632868270/gamers-club/download_1_fekm7s.jpg", "Vincent , Jas and Penny", "a", 'Base Building', 'Stardew Valley');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Marnie's family", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632868514/gamers-club/download_2_cjayhn.jpg", "Marnie's family with their chickens.", "a", 'Base Building', 'Stardew Valley');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Evaluation", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632868788/gamers-club/download_rzphsm.jpg", "Sometimes some of the animals in the coop don't produce anything at all. When I first started playing it was very obvious which one of my chickens wouldn't fork over the goods.", "a", 'Base Building', 'Stardew Valley');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Dont kill me", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632869791/gamers-club/download_s6ovyb.gif", "OK.", "a", 'FPS', 'CS: GO');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Silver Rank", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632870212/gamers-club/download_2_wcsqvu.gif", "silver rank players", "a", 'FPS', 'CS: GO');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("When you're bored of the main quest...", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632880920/gamers-club/download_yaten4.gif", "You pull stunts on a car", "a", 'FPS', 'PUBG: BATTLEGROUNDS');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Praise The Pan", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632881226/gamers-club/1501854226_winv3_sict3p.gif", "He Protec, but He Also Attac", "a", 'FPS', 'PUBG: BATTLEGROUNDS');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Car", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632881446/gamers-club/download_xd2lst.jpg", "Me when I see a car and run to it.", "a", 'FPS', 'PUBG: BATTLEGROUNDS');
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Destroyed in seconds", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632934455/gamers-club/download_mdavbc.gif", "Sauce: gamesprout", "a", 'FPS', "Tom Clancy's Rainbow Six Siege");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Sauce: gamesprout", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632934617/gamers-club/download_1_ygx7ib.gif", "They said they are watching drone.", "a", 'FPS', "Tom Clancy's Rainbow Six Siege");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Love free weekends", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632935285/gamers-club/download_2_kgv0xw.gif", "Lol", "a", 'FPS', "Tom Clancy's Rainbow Six Siege");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Jungle Temple", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632940563/gamers-club/download_hawanb.jpg", "temple in the jungle", "a", 'Base Building', "Terraria");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("My 1.0.6.1 base", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632947891/gamers-club/download_1_vwjpjm.jpg", "huge huge base", "a", 'Base Building', "Terraria");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Dreaming Desert", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632947955/gamers-club/download_2_k15zrl.jpg", "desert base", "a", 'Base Building', "Terraria");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Euro Truck Simulator 2", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632948169/gamers-club/download_vhl4fp.gif", "Trucks dancing in multi-player games. You will see this a lot.", "a", 'Racing', "Euro Truck Simulator 2");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("When you are in a hurry", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632948386/gamers-club/download_1_lftiwr.gif", "You drive very fast.", "a", 'Racing', "Euro Truck Simulator 2");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Kerbal Space Trucking", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632948530/gamers-club/download_y5qbdc.jpg", "Trucks flying in space.", "a", 'Racing', "Euro Truck Simulator 2");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Aston Martin Saftey Car", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632948922/gamers-club/download_uusqpl.jpg", "beautiful car", "a", 'Racing', "F1 2021");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("McLaren 2021", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632949117/gamers-club/download_1_s6ho9b.jpg_url", "nice car", "a", 'Racing', "F1 2021");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("ALPINE SPA", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632949214/gamers-club/download_2_pm8jet.jpg", "driving fast and hearing the winds", "a", 'Racing', "F1 2021");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Lamborghini", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632949442/gamers-club/download_3_bn5ize.jpg", "nice car with neon lights", "a", 'Racing', "Need for Speed Heat");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("nice jump", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632949575/gamers-club/download_sndqli.gif", "Didn't hit the ramp but still survived", "a", 'Racing', "Need for Speed Heat");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("AIR TIME", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632949724/gamers-club/download_1_qiyl2i.gif", "flying car", "a", 'Racing', "Need for Speed Heat");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Good Day Sir!", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632950060/gamers-club/download_kpabr3.gif", "ayy", "a", 'Strategy', "Dota 2");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("LOL", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632950287/gamers-club/download_2_gkdudb.gif", "Twitter - https://twitter.com/mr_semmy", "a", 'Strategy', "Dota 2");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("The essence of civilization", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632950648/gamers-club/download_lwuhne.jpg", "The essence of civilization", "a", 'Strategy', "Sid Meier's Civilization VI");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("In Civilization VI", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632950978/gamers-club/download_1_kbldux.jpg", "No", "a", 'Strategy', "Sid Meier's Civilization VI");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("I found Rome a city of bricks and left it a city of canals.", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632951007/gamers-club/download_2_pppodu.jpg", "beautiful city I built", "a", 'Strategy', "Sid Meier's Civilization VI");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Road Centrifuge", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632951210/gamers-club/download_h6pufn.gif", "Road from train station to sea port :)", "a", 'Strategy', "Cities: Skylines");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Compact urban interchange", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632951325/gamers-club/download_wsuhhy.jpg", "A small urban interchage with road marking", "a", 'Strategy', "Cities: Skylines");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("IslandCity", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632951397/gamers-club/download_1_usieot.jpg", "Overlook of my island city", "a", 'Strategy', "Cities: Skylines");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("LOL I hate this game", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632951987/gamers-club/download_1_tyqnyc.gif", "How can a goalkeeper fail to kick the ball?", "a", 'Sports', "EA SPORTS FIFA 21");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("inhuman reaction ?", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632952100/gamers-club/download_sx3esn.gif", "Lol hilarious game glitch", "a", 'Sports', "EA SPORTS FIFA 21");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Goalkeeper fail xD", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632952188/gamers-club/download_2_vpedvp.gif", "( ͡° ͜ʖ ͡°)", "a", 'Sports', "EA SPORTS FIFA 21");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("My Cat...", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632952412/gamers-club/download_eeespl.jpg", "large fish", "a", 'Sports', "Fishing Planet");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES (":)))", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632952487/gamers-club/download_fvrpkb.gif", ":)))", "a", 'Sports', "Fishing Planet");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Candy GAR", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632952684/gamers-club/download_1_kuctm7.jpg", "catugh a large fish", "a", 'Sports', "Fishing Planet");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Starting the line in style", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632953182/gamers-club/download_bl5j53.gif", "i love those.", "a", 'Sports', "Descenders");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Get Lucky!", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632953455/gamers-club/1603345457_ezgif.com-gif-maker_prjluc.gif", "so lucky", "a", 'Sports', "Descenders");
INSERT INTO posts(title, image_url, content, author_username, category, game_name) VALUES ("Over 60km/h", "https://res.cloudinary.com/doiyuhvem/image/upload/v1632953712/gamers-club/download_ckrwq9.jpg", "riding fast on the track", "a", 'Sports', "Descenders");

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

