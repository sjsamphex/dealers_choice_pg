// setting up the node-postgres driver
const pg = require('pg');
const postgresUrl =
  process.env.DATABASE_URL || 'postgres://localhost/cat_books';
// const { Pool } = require('pg');
// const pool = new Pool({
//   connectionString: process.env.DATABASE_URL,
//   ssl: {
//     rejectUnauthorized: false,
//   },
// });
const client = new pg.Client(postgresUrl);

// connecting to the `postgres` server
client.connect();

// make the client available as a Node module
module.exports = client;

// module.exports = pool;
