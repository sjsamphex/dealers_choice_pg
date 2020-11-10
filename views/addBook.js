const html = require('html-template-tag');

module.exports = () => html`<!DOCTYPE html>
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
    <body>
      <div class="book-item">
        <form method="post" action="/books">
          <label for="name">Author</label>
          <input type="text" name="name" />
          <label for="title">Title</label>
          <input type="text" name="title" />
          <br>
          <textarea name="content"></textarea>
          <button type="submit">Submit</button>
        </form>
      </div>
    </body>
  </html>`;
