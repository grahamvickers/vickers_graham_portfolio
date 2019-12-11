var express = require('express');
var router = express.Router();
const connect = require('../utils/sqlConnect');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
})

// router.get('/', (req, res) => {

//   let query = "SELECT id, logo FROM tbl_projects"

//   sql.query(query, (err, result) => {
//     if (err) console.log(err); //something broke?!
    
//     console.log(result); // this should be the database row 
    
//     res.render("layout", {data:result}); // send that row back to the calling function
//   })
// })


// router.get('/svgdata/', (req, res) => {
//   // here is where we set up the query 
//   console.log(req);
//   console.log(req.params);
//   let query = `SELECT id, title, img, bio FROM tbl_projects WHERE id="${req.params.target}"`;

//   sql.query(query, (err, result) => {
//     if (err) console.log(err); //something broke?!
    
//     console.log(result[0]); // this should be the database row 
    
//     res.json(result[0]); // send that row back to the calling function
//   })
// })
router.get('/', (req, res) => {

  // get the connection via the connection pool, and then run the query -> just one added step
  connect.getConnection((err, connection) => {
  if (err) { return console.log(error.message); }

  let query = `SELECT id, logo FROM tbl_projects`;

  connect.query(query, (err, portfoliodata) => {
    connection.release(); // send this connection back to the pool

    if (err) {
      // will exit the function and log the error
      return console.log(err.message);
    }

    console.log(portfoliodata); // this should be your database query result

    // render our page
    res.render('layout.hbs', {data: portfoliodata}); // whatever page and data you're rendering
  });
});
})


router.get('/', (req, res) => {

  // get the connection via the connection pool, and then run the query -> just one added step
  connect.getConnection((err, connection) => {
  if (err) { return console.log(error.message); }

  let query = `SELECT id, title, img, bio FROM tbl_projects WHERE id="${req.params.target}"`;

  connect.query(query, (err, projects) => {
    connection.release(); // send this connection back to the pool

    if (err) {
      // will exit the function and log the error
      return console.log(err.message);
    }

    console.log(projects); // this should be your database query result

    // render our page
    res.render('layout.hbs', {data: projects}); // whatever page and data you're rendering
  });
});
})


module.exports = router;
