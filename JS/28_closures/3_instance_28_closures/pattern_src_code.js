/**
 * testability pattern: closures
 * ----------------------------------------------
 * source: request.url
 * tarpit: nested functions like `function f(){ return function g(){} }`
 * sink: response.send()
 */

var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
var res = '';

function handleServer(req, result){
    res = result;
    var path = route.parse(req.url, true);

    if(req.url === '/'){
        res.writeHead(200, {"Content-Type" : "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    }else if(path.pathname === '/query/'){

        //PATTERN CODE 
        const parsed = route.parse(req.url); // source
        const query  = querystring.parse(parsed.query);
        var b = query.name;
        p.printable(b);
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE
//in JS there is no possibility to define private methods, so closures can be used to "emulate" them
var p = (function() {
	function printVal(val) {
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(val);  // sink
        res.end();
	}
  
	return {
	  printable: function(b) {
		printVal(b);
	  }
	};
  })();


