const express = require('express');
const path = require('path');
const ctlr = require('./database/controller');
const faker = require('faker');
const redis = require('redis');

const app = express();

const REDIS_PORT = process.env.PORT || 6379;

const client = redis.createClient(REDIS_PORT);

app.use(express.static(path.join(__dirname, '..', '..', 'dist')));
app.use('/image/', express.static(path.join(__dirname, '..', 'public', 'img')));

// Cache middleware
cache = (req, res, next) => {
  client.get(req.params.id, (err, data) => {
    if (err) throw err;
    if (data !== null) {
      res.send(data);
    } else {
      next();
    }
  });
};

app.get('/tour/:id', cache, (req, res) => {
  // This route will look up a tour by ID and send the relevant data.

  const { params: { id } } = req;
  // this is const id = req.params.id but it's defined using destructuring
  // https://exploringjs.com/impatient-js/ch_destructuring.html#object-destructuring
  ctlr.getTour(id, (err, data) => {
    if (err) {
      console.error(err);
      res.writeHead(500);
      res.end();
      return;
    }
    const targetData = JSON.stringify(data);
    client.setex(id, 300000000, targetData);
    res.status(200);
    res.end(JSON.stringify(data));
  });
});

app.get('/tour/',  (req, res) => {
  console.log("Tour random route was hit.");
  // This route will look up a tour by ID and send the relevant data.
  const id = faker.random.number({ 'min': 999900, 'max': 1000000 });
  // console.log(randomID,'randomIDDDDDDDDD')
  // const { params: { randomID } } = req;
  ctlr.getRandomTour(id, (err, data) => {
    if (err) {
      console.error(err);
      res.writeHead(500);
      res.end();
      return;
    }
    const targetData = JSON.stringify(data);
    client.setex(id, 300000000, targetData);
    res.writeHead(200);
    res.end(JSON.stringify(data));
  });
});

app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, '..', '..', 'index.html'));
});

app.post('/tour', (req, res) => {
})

app.post('/attraction', (req, res) => {
})

app.post('/tourAttraction', (req, res) => {
})

app.put('/tour/:id', (req, res) => {
})

app.delete('/tour/:id', (req, res) => {
})



module.exports = app;