var express = require('express');
var router = express.Router();
const connect = require('../utils/sqlConnect');


// /* GET home page. */
// router.get('/', function(req, res, next) {
//   console.log('at the main route');

//   res.render('layout.hbs', { title: 'Express' });

// })

router.get('/', (req, res) => {

  // get the connection via the connection pool, and then run the query -> just one added step
  connect.getConnection((err, connection) => {
    if (err) { return console.log(err.message); }

    let query = `SELECT id, logo FROM tbl_projects`;

    connect.query(query, (err, portfoliodata) => {
    connection.release(); // send this connection back to the pool

    if (err) {
      // will exit the function and log the error
      return console.log(err.message);

    }

    console.log('data: ', portfoliodata); // this should be your database query result

    // render our page
    res.render('layout.hbs', {data: portfoliodata}); // whatever page and data you're rendering
   });
  })
})



router.get('/project/:target', (req, res) => {

  // console.log('gogogo');
  // get the connection via the connection pool, and then run the query -> just one added step
  connect.getConnection((err, connection) => {
  if (err) { return console.log(error.message); }

    let query = `SELECT * FROM tbl_projects WHERE id="${req.params.target}"`;
    // console.log(query);
    connect.query(query, (err, projectdata) => {
      connection.release(); // send this connection back to the pool

      if (err) {
        // will exit the function and log the error
        return console.log(err.message);
      }

      console.log('data: ', projectdata); // this should be the database query result

      // render our page
      res.json(projectdata); // whatever page and data you're rendering

    })
  })
})


module.exports = router;
