/**
 * testability pattern: variadic/rest parameter 
 * ----------------------------------------------
 * source: request.url
 * tarpit: func(...params) 
 * sink: response.send()
 */

var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
var res = '';

// pattern
function sum(...numbers){
    res.writeHead(200, {"Content-Type" : "text/html"});
    numbers.forEach(out);
    res.end();
}

function out(val){
    res.write(val); // sink 
}

function handleServer(req, response){
    res = response;
    var path = route.parse(req.url, true);

    if(req.url === '/'){
        res.writeHead(200, {"Content-Type" : "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    }else if(path.pathname === '/query/'){

        // pattern
        const parsed = route.parse(req.url); // source
        const query  = querystring.parse(parsed.query);
        var b = query.name;
        sum('a', 'b', 'c', b); // tarpit
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

