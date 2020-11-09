var html = require('html-template-tag');
module.exports = () => {
  let htmlscript = html`<!DOCTYPE html>
    <html>
      <head>
        <title>Cat Books</title>
        <link rel="stylesheet" href="/book.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      </head>
      <body>
        <div class="book-list">
          <header>
            <img src="/CatBookLogo.png" /> <a href="/">Cat Books </a
            ><img src="/CatBookLogo.png" />
          </header>
          <br />
          <img src="/sadcat.jpg" style="width:auto;height:auto;" />
          <p style="text-align:center">
            This page doesn't exist. Please go back :(
          </p>
        </div>
      </body>
    </html>`;
  return htmlscript;
};
