express = require 'express'
app = express()

app.configure ()->
  app.set 'views', process.cwd() + "/views"
  app.engine 'html', require('ejs').renderFile

app.get '/', (req,res) ->
  res.render 'app.html'

app.get '/diagnostic', (req,res) -> res.send(process.env.ENVIRONMENT_SHA)

app.listen(process.env.PORT)
