var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
})

router.get('/', (req, res) => {

  let query = "SELECT id, logo FROM tbl_projects"

  sql.query(query, (err, result) => {
    if (err) console.log(err); //something broke?!
    
    console.log(result); // this should be the database row 
    
    res.render("layout", {data:result}); // send that row back to the calling function
  })
})


router.get('/svgdata/', (req, res) => {
  // here is where we set up the query 
  console.log(req);
  console.log(req.params);
  let query = `SELECT id, title, img, bio FROM tbl_projects WHERE id="${req.params.target}"`;

  sql.query(query, (err, result) => {
    if (err) console.log(err); //something broke?!
    
    console.log(result[0]); // this should be the database row 
    
    res.json(result[0]); // send that row back to the calling function
  })
})


module.exports = router;
