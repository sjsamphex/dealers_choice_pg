const html = require('html-template-tag');
module.exports = (books) => {
  const htmlscript = html`<!DOCTYPE html>
    <html>
      <head>
        <title>Cat Books</title>
        <link rel="stylesheet" href="/main.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      </head>
      <body>
        <header>
          <img src="/CatBookLogo.png" /> <a href="/">Cat Books </a
          ><img src="/CatBookLogo.png" />
          <br />
        </header>
        <h3><a href="/books/add">Add a book</a></h3>
        <div class="book-list">
          ${books.map(
            (book) => html` <a href="/books/${book.id}">
              <div class="book-item">
                <div class="book-image">
                  <img src="/${book.image}" />
                </div>
                <div class="book-info">
                  <p>
                    <span class="news-position">${book.title}. </span>
                    <br />
                    <small>(by ${book.author})</small>
                  </p>
                  <small> Rating: ${book.rating} ⭑ </small>
                </div>
              </div></a
            >`
          )}
        </div>
      </body>
    </html>`;
  return htmlscript;
};
