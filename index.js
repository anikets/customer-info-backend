const mysql = require('mysql');

const dbConfig = require("./db.config");

const connection = mysql.createConnection({
  host: dbConfig.HOST,
  user: dbConfig.USER,
  password: dbConfig.PASSWORD,
  database: dbConfig.DB
});

connection.connect(function(err) {
  if (err) throw err;
  console.info("Connected!");
});

module.exports = connection;
