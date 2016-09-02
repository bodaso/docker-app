var express = require('express');
var mysql = require('mysql');
var router = express.Router();

var mPool = mysql.createPool({
  host: process.env.DATABASE_HOST || 'localhost',
  port: 3306,
  database: 'users',
  user: 'root_user',
  password: 'abcd123',
  connectionLimit: 100
});

/* GET home page. */
router.get('/', function(req, res) {

  mPool.getConnection(function(err, connection){
    if(!err) {
      console.log("Database is connected ... nn");
    } else {
      console.log("Error connecting database ... nn");
    }

    connection.query('SELECT count(*) AS total_users FROM directory', function(err, rows) {
      if (err) throw err;
      res.render('index', { title: 'index page', counter: rows[0].total_users });
    });

    connection.release();
  });

});

module.exports = router;
