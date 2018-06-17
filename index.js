var express = require('express')
var app = express()

const PORT = process.env.PORT || 8080

app.listen(PORT, () => {

  app.get('/', (req, res) => {
    res.end('Hello Denimar!! Microservice01... my version 1.0.0.12')
  })

  console.log(`Listening on port ${PORT}`)
})
