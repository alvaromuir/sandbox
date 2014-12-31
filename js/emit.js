var http = require('http');
var port = 8080;

var server = http.createServer(function(req, res){
	res.writeHead(200);
	res.end('hello');
});

server.listen(port);
console.log('server listening on http://127.0.0.1:' +  port);