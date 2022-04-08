const express = require('express');
const pool = require('./db');

const app = express();

app.get('/monsters', (request, response) => {
    pool.query('SELECT * FROM monsters', (err, res) => {
        if (err) return console.log(err);

        console.log(res.rows);
    });
});

const port = 3000;

app.listen(port, () => console.log(`listening on port ${port}`));