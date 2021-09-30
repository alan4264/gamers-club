const mysql = require('mysql2');
const connection = mysql.createPool({
    // host: 'localhost',
    // user: 'root',
    // // password = process.env.DB_PASSWORD,
    // database: 'gamers_club'
    host: process.env.DB_HOST,
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    database: process.env.DB
});

module.exports = connection;