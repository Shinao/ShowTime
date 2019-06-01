var express = require('express')
var http = require('http')
var session = require('express-session')
var bodyParser = require("body-parser")
var pug = require('pug')
var db = require('./database.js').db

var app = express()

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())
app.use(session({ name : 'showtime.sid', secret: 'showtime-hash-computer', resave: false, saveUninitialized: true, cookie: { maxAge: 365 * 24 * 60 * 60 * 1000 * 10 } }))
app.use(express.static('../client'))

require('./showtime.js').init(app)

const htmlOfCompiledTemplateIndex = pug.compileFile('templates/index.pug')();
app.get('/*', function (req, res) {
  res.send(htmlOfCompiledTemplateIndex) 
})

// Create an HTTP service.
http.createServer(app).listen(4542)
// Nginx bypass this step
// Create an HTTPS service identical to the HTTP service.
// var options = {
//   key: fs.readFileSync('certificates/key.pem'),
//   cert: fs.readFileSync('certificates/cert.pem')
// }
// https.createServer(options, app).listen(8082)