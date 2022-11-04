var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
var res = ''

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
	    b = query.name;
        var f = new TestClass(b);
        res.writeHead(404, {"Content-Type": "text/html"});
        res.write(f.toString());
        res.end();
            
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
class TestClass{
	foo;
	constructor(val){
		this.foo = val;
	}
}

// toString override added to prototype of Foo class
TestClass.prototype.toString = function() {
  return this.foo;
}



