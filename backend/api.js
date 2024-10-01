// database
let db = require('./db')
let express = require('express');
let expressRouter = express.Router()
let sqlConfig = require('./sqlConfig');
let mysql = require('mysql');

// connect database
const dbServer = mysql.createConnection(db)
dbServer.connect()

expressRouter
    // organizer data
    .get('/organizer-data', (req, res) => {
        dbServer.query(sqlConfig.organizer, function(err, data) {
            res.send(data)
        });
    })
    // city data
    .get('/city-data', (req, res) => {
        dbServer.query(sqlConfig.city, function(err, data) {
            res.send(data)
        });
    })
    // category data
    .get('/category-data', (req, res) => {
        dbServer.query(sqlConfig.category, function(err, data) {
            res.send(data)
        });
    })
    .get('/search-detail', (req, res) => {
        const body = [req.query.fundraiser_id];
        dbServer.query(sqlConfig.detail, body, function(err, data) {
            if (data) {
                res.send(data[0]);
            }
        });
    })
    .get('/search-data', (req, res) => {
        let {category_id, organizer, city} = req.query;
        category_id = category_id || null;
        organizer = organizer || null;
        city = city || null;
        const body = [category_id, category_id, organizer, organizer, city, city];
        dbServer.query(sqlConfig.list, body, function(err, data) {
            res.send(data);
        });
    })
module.exports = expressRouter