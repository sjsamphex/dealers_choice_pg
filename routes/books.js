const router = require('express').Router();
const client = require('../db/index');
// eslint-disable-next-line no-unused-vars
const html = require('html-template-tag');
const bookList = require('../views/bookList');
const bookDetails = require('../views/bookDetails');
const addBook = require('../views/addBook');
const SQL = require('sql-template-strings');

// express.static('./');
// router.use(express.static('public'));
// router.use(express.static('public/images'));

router.get('/', async (req, res, next) => {
  try {
    const data = await client.query(SQL`SELECT * FROM books`);
    const books = data.rows;

    res.send(bookList(books));
  } catch (error) {
    next(error);
  }
});

router.get('/add', (req, res) => {
  res.send(addBook());
});

router.post('/', async (req, res, next) => {
  try {
    const booklistquery = await client.query(SQL`SELECT count(*) FROM books`);
    const bookcount = booklistquery.rows[0].count;
    const newbookid = parseInt(bookcount) + 1;
    const rating = Math.floor(Math.random() * 5) + 1;
    const { name, title, content } = req.body;
    const book = (
      await client.query(
        'INSERT INTO books(id, rating, author, title, content) VALUES($1, $2, $3, $4, $5) RETURNING *',
        [newbookid, rating, name, title, content]
      )
    ).rows[0];
    res.redirect(`/books/${book.id}`);
  } catch (ex) {
    next(ex);
  }
});

router.get('/:id', async (req, res, next) => {
  let id = req.params.id;
  try {
    const booklistquery = await client.query(SQL`SELECT count(*) FROM books`);
    const booklistlength = booklistquery.rows[0].count;
    if (id > booklistlength) {
      id = id % booklistlength;
    }

    const data = await client.query(SQL`SELECT * FROM books WHERE id=$1`, [id]);
    const [book] = data.rows;

    res.send(bookDetails(book));
  } catch (error) {
    next(error);
  }
});

module.exports = router;
