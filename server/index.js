const express = require('express');
const bodyParser = require('body-parser');

const db = require('../database');

const app = express();
const PORT = 3000;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use(express.static(__dirname + '/../client/dist'));

app.get('/api/menu/:pageId', (req, res) => {
  db.getMenuWithPageId(req.params.pageId, (data) => {
    res.send(data);
  });
});

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
