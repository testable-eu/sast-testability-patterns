/**
 * testability pattern: reflect_get 
 * ----------------------------------------------
 * source: request.url
 * tarpit: Reflect.get();
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

        //PATTERN CODE {1} 
        const parsed = route.parse(req.url); //source
        const query  = querystring.parse(parsed.query);
        const b = query.name;   

        const obj = {};
        Reflect.set(obj, 'input', b);
        
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(Reflect.get(obj, 'input'));//sink
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

