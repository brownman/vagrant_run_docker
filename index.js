var express = require('express');

// Constants
var DEFAULT_PORT = 8001;
var PORT = process.env.PORT || DEFAULT_PORT;


// App
var app = express();
app.get('/', function (req, res) {
  res.send('Hello World\n');
});

// GZIP and set cache-control headers of 1 day
var oneDay = 86400000;
app.use(express.compress());
app.use(express.static(__dirname + '/public', { maxAge: oneDay }));

app.listen(8001, "0.0.0.0");
// app.listen(PORT)

console.log('Running on http://localhost:' + PORT);
