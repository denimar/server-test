var express = require('express')
var app = express()

const PORT = process.env.PORT || 8080

app.listen(PORT, () => {

  app.get('/', (req, res) => {
    res.end('Hello Denimar!! Server 01... outra versão - change 13')
  })

  console.log(`Listening on port ${PORT}`)
})
