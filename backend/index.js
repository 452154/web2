// express
const express = require('express');
// cors request
const cors = require('cors');
// body parser
const bodyParser = require('body-parser');
// db api
const dbApi = require('./api');

const serverApp = express();

serverApp.use(bodyParser.json())
serverApp.use(bodyParser.urlencoded({ extended: false }));
serverApp.use(cors());
// use db api
serverApp.use('/api', dbApi);

// start port 3000
serverApp.listen(3000);

console.log('start port：3000');