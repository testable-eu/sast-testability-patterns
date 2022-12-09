/**
 * testability pattern: function_get_arguments 
 * ----------------------------------------------
 * source: request.url
 * tarpit: call argument-to-parameter binding for functions using the special `arguments` keyword
 * sink: response.send()
 */

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

        // pattern code
        const parsed = route.parse(req.url); // source
        const query  = querystring.parse(parsed.query);
        var b = query.name;
        var f = query.func.toString().trim();
        res.writeHead(200, {"Content-Type" : "text/html"});
        global[f]('1', '2', '3', b);
        res.end();

    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

global.F = function F(){
    for (var i = 0; i < arguments.length; i++) {
        res.write(arguments[i]); // sink
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');


