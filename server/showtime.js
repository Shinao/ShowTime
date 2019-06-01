var db = require('./database.js').db
var HttpStatus = require('http-status-codes')
var _ = require('underscore')
var tvmaze = require("tvmaze-node")
var fs = require('fs')

module.exports.init = function (app) {
    app.get('/get-session', function (req, res) {
        if (req.session.loggedin)
            req.session.shows = db.find({ username: req.session.username }).get('shows').value()
            
        res.send(req.session)
    })

    app.post('/signin', function (req, res) {
        if (!requestContains(req.body, res, ['username', 'password']))
            return

        if (_.isEmpty(req.body.username) || _.isEmpty(req.body.password))
            return res.sendStatus(HttpStatus.BAD_REQUEST)

        var user = db.find({ username: req.body.username }).value()
        if (user) {
            if (user.password != req.body.password)
                return res.sendStatus(HttpStatus.BAD_REQUEST)

            req.session.shows = user.shows
        }
        else {
            db.push({ username: req.body.username, password: req.body.password, shows: [] }).write()
            req.session.shows = []
        }

        req.session.loggedin = true
        req.session.username = req.body.username

        return res.send(req.session)
    })

    app.get('/logout', function (req, res) {
        req.session.username = undefined
        req.session.shows = []
        req.session.loggedin = false
        res.sendStatus(HttpStatus.OK)
    })

    app.get('/get-shows-from-name/:name', function (req, res) {
        tvmaze.search(req.params.name, function(error, response) {
            if (!_.isEmpty(error))
                return res.send([])
            
            res.send(response)
        })
    })

    app.post('/add-show', function (req, res) {
        if (!requestContains(req.body, res, ['name']))
            return

        tvmaze.singleShow(req.body.name, false, function(error, response) {
            if (!_.isEmpty(error))
                return res.sendStatus(HttpStatus.NOT_FOUND)

            response = JSON.parse(response)

            console.log(db.find({ api_id: response.id }).value())
            if (db.find({ username: req.session.username }).get('shows').find({ api_id: response.id }).value())
                return res.sendStatus(HttpStatus.CONFLICT)
            
            var shows = db.find({ username: req.session.username }).get('shows')
            shows.push({ api_id: response.id }).write()
            updateShow(shows, response.id, function() {
                res.sendStatus(HttpStatus.OK)
            })
        });
    })

    app.post('/remove-show', function (req, res) {
        if (!requestContains(req.body, res, ['id']))
            return

        var shows = db.find({ username: req.session.username }).get('shows')
        shows.remove({ api_id: parseInt(req.body.id) }).write()

        res.sendStatus(HttpStatus.OK)
    })

    app.post('/update-show-desired-season', function (req, res) {
        if (!requestContains(req.body, res, ['id']))
            return

        var shows = db.find({ username: req.session.username }).get('shows')
        shows.find({ api_id: parseInt(req.body.id) }).assign({ desired_season: parseInt(req.body.desired_season) }).write()
        
        res.sendStatus(HttpStatus.OK)
    })

    app.get('/refresh-shows', function (req, res) {
        var showsDb = db.find({ username: req.session.username }).get('shows')
        var shows = showsDb.value()

        // Send request back only when all shows has been updated
        var latch = new CDL(_.size(shows), function() {
            res.sendStatus(HttpStatus.OK)
        });
        var cb = function() { latch.signal() }

        _.each(shows, function(show) {
            updateShow(showsDb, show.api_id, cb)
        })

    })
}

var updateShow = function (showsDb, show_api_id, cb) {
    tvmaze.showById(show_api_id, "embed", ["episodes"], function(error, response) {
        if (!_.isEmpty(error))
            return cb()

        response = JSON.parse(response)

        var last_episode = _.last(response._embedded.episodes)
        showsDb.find({ api_id: show_api_id }).assign({ image_url: response.image ? response.image.medium : "", name: response.name, status: response.status, produced_year: response.premiered.split('-')[0], rating: response.rating && response.rating.average ? response.rating.average : "?", date_season_final: last_episode.airdate, current_season: last_episode.season }).write()

        cb()
    });
}

var requestContains = function (req_input, res, fields) {
    for (idx in fields) {
      if (req_input[fields[idx]] == undefined) {
        res.sendStatus(HttpStatus.EXPECTATION_FAILED)
        return false
      }
    }
  
    return true
}

// simple countdown latch
function CDL(countdown, completion) {
    this.signal = function() { 
        if(--countdown < 1) completion(); 
    };
}

// Backup from JSON
// setTimeout(function() {
//     var backup_shows = JSON.parse(fs.readFileSync("showtv.json"))
//     var showsDb = db.find({ username: 'Shinao' }).get('shows')

//     _.each(backup_shows, function(show) {
//         delete show.id
//         delete show.id_user
//         show.api_id = parseInt(show.api_id)
//         show.desired_season = parseInt(show.desired_season)
//         show.current_season = parseInt(show.current_season)
//         show.rating = parseInt(show.rating)
//         show.image_url = show.picture
//         delete show.picture

//         showsDb.push(show).write()
//         console.log(show)
//     })
        
// }, 500)