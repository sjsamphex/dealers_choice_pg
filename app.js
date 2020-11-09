const express = require('express');
const app = express();
// const morgan = require('morgan');
const client = require('./db/index');
// const bookBank = require('./bookBank.js');
// eslint-disable-next-line no-unused-vars
const html = require('html-template-tag');
const bookList = require('./views/bookList');
const bookDetails = require('./views/bookDetails');
const fourOhFour = require('./views/404');
const SQL = require('sql-template-strings');

express.static('./');
app.use(express.static('public'));
app.use(express.static('public/images'));

// app.use(morgan('dev'));
app.get('/', async (req, res, next) => {
  try {
    const data = await client.query(SQL`SELECT * FROM books`);
    const books = data.rows;

    // const books = bookBank.list();
    res.send(bookList(books));
  } catch (error) {
    next(error);
  }
});

app.get('/books/:id', async (req, res, next) => {
  let id = req.params.id;
  try {
    const booklistquery = await client.query(SQL`SELECT count(*) FROM books`);
    const booklistlength = booklistquery.rows[0].count;
    console.log(booklistlength);
    if (id > booklistlength) {
      id = id % booklistlength;
    }

    // const data = await client.query(
    //   SQL`SELECT * FROM books WHERE id=${req.params.id}`
    // );
    const data = await client.query(SQL`SELECT * FROM books WHERE id=$1`, [id]);
    const [book] = data.rows;

    // const books = bookBank.list();
    res.send(bookDetails(book));
  } catch (error) {
    next(error);
  }
  // const book = bookBank.find(id);
  // if (!book.id) {
  //   next(new Error('Not Found'));
  // }
  // res.send(bookDetails(book));
});

app.use(function (err, req, res, next) {
  console.error(err.stack);
  res.status(404).send(fourOhFour());
});

app.get('/db', async (req, res) => {
  try {
    const client = await pool.connect();
    const result = await client.query('SELECT * FROM test_table');
    const results = { results: result ? result.rows : null };
    res.render('pages/db', results);
    client.release();
  } catch (err) {
    console.error(err);
    res.send('Error ' + err);
  }
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`App listening in port ${PORT}`);
});
