const express = require('express');
const db = require('../database/index.js');

const server = express();
const PORT = 3000;

server.get('/menu/:page_id', (req, res) => {
    db.getMenuWithPageId(req.params.page_id, (err, results) => {
        if (err) {
            console.log('error from db query for menu', err);
            res.send(err);
        } else {
            console.log(`db query returned ${results.length} results`);
            res.send(results);
        }
    });
});

server.listen(PORT, () => {
    console.log(`server listening on ${PORT}`);
});