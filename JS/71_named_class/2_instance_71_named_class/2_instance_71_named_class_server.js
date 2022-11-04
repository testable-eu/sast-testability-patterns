var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
var res = '';

function handleServer(req, response){
    res = response;
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
        const bar = new Foo(b);
	    bar.printX = function (){
            res.writeHead(200, {"Content-Type" : "text/html"});
            // XSS vulnerability
            res.write(this.x); 
            res.end();
        }
        bar.printX();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
const Foo = class NamedFoo {
	constructor(b) {
		this.x = b;
	}
}
