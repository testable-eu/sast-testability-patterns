/**
 * testability pattern: function_get_arguments 
 * ----------------------------------------------
 * source: request.url
 * tarpit: obj1 = obj2; obj1.property = value;
 * sink: response.send(obj2.property)
 */

obj1 = obj2; obj1.property = value
var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');

// pattern code
class myClass {
    b = 'safe';
}

function handleServer(req, res){
    var path = route.parse(req.url, true);

    if(req.url === '/'){
        res.writeHead(200, {"Content-Type" : "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    }else if(path.pathname === '/query/'){

        // pattern code
        const parsed = route.parse(req.url); // source
        const query  = querystring.parse(parsed.query);
        obj1 = new myClass();
	    obj2 = obj1;
	    obj2.b = query.name; // tarpit
        res.writeHead(200, {"Content-Type" : "text/html"});
	    res.write(obj1.b); // sink
        res.end();
            
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');


