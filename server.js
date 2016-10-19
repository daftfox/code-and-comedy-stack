var express = require('express');
var app = express();
var cors = require('cors');

var backend = require('./back-end/app.js');
var frontend = require('./front-end/server.js');

app.use(backend);
app.use(frontend);
app.use(cors());

backend.set('port', 3000);
frontend.set('port', process.env.PORT || 3001);

// fire up the back-end server
var backendServer = backend.listen(backend.get('port'), '0.0.0.0', function() {
    console.log('Back-end server listening on port ' + backend.get('port') + ' in ' + backend.get('env') + ' mode');
});

// Fire up the front-end server
var frontendServer = frontend.listen(frontend.get('port'), '0.0.0.0', function() {
    console.log('Front-end server listening on port ' + frontend.get('port') + ' in ' + frontend.get('env') + ' mode');
});

