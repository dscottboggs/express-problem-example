const express = require('express')

const app = express()

app.get('/', (req, res) => res.json({hello: "world"}))

app.listen(12345, '0.0.0.0', () => console.log('ready'))
