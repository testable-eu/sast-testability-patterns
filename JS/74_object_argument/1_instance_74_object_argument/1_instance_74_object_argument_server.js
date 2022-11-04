var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');

function handleServer(req, res){
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
        obj1 = new myClass();
	    obj1.prop = 'abc';
	    b = query.name;
	    f(obj1, b);
        // XSS
        res.writeHead(200, {"Content-Type" : "text/html"});
	    res.write(obj1.prop);
        res.end();
            
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
class myClass{} //JS does not have generics

function f(obj, b){
	obj.prop = b;
}

