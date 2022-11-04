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
        console.log(req.method);

        //PATTERN CODE {1}
        //it takes element from a form 
        const parsed = route.parse(req.url);
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

//PATTERN CODE {2}
//in JS there is no possibility to define private methods, so closures can be used to "emulate" them
var p = (function() {
	function printVal(val) {
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(val); 
        res.end();
	}
  
	return {
	  printable: function(b) {
		printVal(b);
	  }
	};
  })();


