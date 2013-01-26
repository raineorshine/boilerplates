# includes
express = require('express')
rjs = require('rjs').installPrototypes()
requiredir = require('requiredir')
config = require('./config').config

# create app and set middleware
app = express()
app.set 'view engine', 'jade'
app.set 'views', __dirname + '/views'
app.use express.logger('dev')
app.use express.bodyParser()
app.use express.cookieParser()
app.use express.session(secret: config.sessionSecret)
app.use express.static(__dirname + '/public')

# controllers must be required after 'app' is defined
requiredir './controllers'

###
Serializes the view data for bootstrapping and renders with the 'layout' view.
Sends the raw JSON if 'format=json'.
Declared in global namespace so as to be accessible by controllers.
###
render = (req, res, viewData) ->
  if req.query.format is 'json'
    res.send viewData
  else
    viewData.bootstrap = JSON.stringify(viewData.bootstrap)
    res.render 'layout', viewData


# start
app.listen process.env.PORT, ->
  console.log 'Listening on port ' + process.env.PORT
