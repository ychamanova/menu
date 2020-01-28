const mysql = require('mysql');
const mysqlConfig = require('./config.js');

const connection = mysql.createConnection(mysqlConfig);

const getMenuWithPageId = function(page_id, cb) { 
  connection.query('SELECT * from SECTIONS where PageID=' + page_id, function (error, results, fields) {
    if (error) console.error(error);
    cb(results);
  });
};

module.exports = {
  getMenuWithPageId
};