/**
 * testability pattern: reference argument 
 * ----------------------------------------------
 * source: request.url
 * tarpit: change property of a pass-by-reference call argument
 * sink: response.send()
 */

var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');

// pattern
class myClass {
    a = '';
}

function foo(objA, objB){
    objA.a = objB;
}  
 
function handleServer(req, res){
    var path = route.parse(req.url, true);

    if(req.url === '/'){
        res.writeHead(200, {"Content-Type" : "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    }else if(path.pathname === '/query/'){

        // pattern
        const parsed = route.parse(req.url); // source
        const query  = querystring.parse(parsed.query);
        var b = query.name;
        a = new myClass();

        foo(a, b); // tarpit
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(a.a);
        res.end(); // sink
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');


