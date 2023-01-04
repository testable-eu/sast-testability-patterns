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

//PATTERN CODE 
function greet(name){
    return function(){
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(name); // sink
        res.end();
    };
}

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
        var v = greet(b); // tarpit
        // v is now the inner (nested) function of greet
        v();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

