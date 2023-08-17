const express = require('express')

const app = express()

app.get('/', (req, res) => res.json({hello: "world"}))

app.listen({port: 12345, host: '0.0.0.0'}, () => console.log('ready'))
