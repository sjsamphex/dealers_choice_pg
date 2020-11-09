const html = require('html-template-tag');
module.exports = (book) => {
  const htmlscript = html`<!DOCTYPE html>
    <html>
      <head>
        <title>Cat Books</title>
        <link rel="stylesheet" href="/book.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      </head>
      <body>
        <header>
          <img src="/CatBookLogo.png" /> <a href="/">Cat Books </a
          ><img src="/CatBookLogo.png" />
        </header>
        <div class="book-item">
          <div class="book-image">
            <img src="/${book.image}" />
          </div>
          <div class="book-info">
            <p>
              ${book.title}
              <br />
              <small>(by ${book.author})</small>
            </p>
            <small> Rating: ${book.rating} ⭑ </small>
            <p>${book.content}</p>
          </div>
        </div>
        <a href="/books/${book.id + 1}">Next Book</a>
      </body>
    </html>`;
  return htmlscript;
};
