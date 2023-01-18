/**
 * testability pattern: generatorfunction_constructor
 * ----------------------------------------------
 * source: request.url
 * tarpit: Object.getPrototypeOf(function*(){}).constructor
 * sink: response.send();
 */

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
        const parsed = route.parse(req.url);//source
        const query  = querystring.parse(parsed.query);
        const b = query.name;   
        var GeneratorFunction = Object.getPrototypeOf(function*(){}).constructor
        var g = new GeneratorFunction('a', 'yield a');
        var iterator = g(b);

        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(iterator.next().value);//sink
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

