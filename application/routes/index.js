var express = require('express');
var router = express.Router();
var path = require('path');
var root_dir = path.join(__dirname, '../views/');


/* GET home page. */
router.get('/', function(req, res, next) {
  res.sendFile('index.html', {root : root_dir});
});

router.get('/mapdemo', function(req, res, next) {
  res.sendFile('mapdemo.html', {root : root_dir});
});

module.exports = router;
