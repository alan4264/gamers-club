const mysql = require('mysql2');
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    // password = process.env.DB_PASSWORD,
    database: 'gamers_club'
});

module.exports = connection;