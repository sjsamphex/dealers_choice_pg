const express = require('express');
const app = express();
//const morgan = require('morgan');
const fourOhFour = require('./views/404');

//app.use(morgan('dev'));
app.use(express.urlencoded({ extended: false }));

express.static('./');
app.use(express.static('public'));
app.use(express.static('public/images'));

app.use('/books', require('./routes/books'));

app.get('/', (req, res) => {
  res.redirect('/books');
});

app.use(function (err, req, res, next) {
  console.error(err.stack);
  res.status(404).send(fourOhFour());
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`App listening in port ${PORT}`);
});
