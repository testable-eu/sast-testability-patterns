/**
 * testability pattern: array_shift 
 * ----------------------------------------------
 * source: request.url
 * tarpit: array.shift()
 * sink: response.send()
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

        // pattern code
        const parsed = route.parse(req.url); // source
        const query  = querystring.parse(parsed.query);
        const b = query.name;   
        let myArray = new Array(b, '1', '2');
        element = myArray.shift(); // tarpit

        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(element); // sink
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

