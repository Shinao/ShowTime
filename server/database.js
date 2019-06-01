var low = require('lowdb')
var fileSync = require('lowdb/adapters/FileSync')
var fs = require('fs')
var _ = require('underscore')

var adapter_options = { serialize: function(obj) { return JSON.stringify(obj, null, 2); } }
if (process.env.NODE_ENV == 'production')
    adapter_options.serialize = function(obj) { return JSON.stringify(obj, null, null); }

var db = low(new fileSync('db.json'))
db.defaults([]).write()

module.exports.db = db