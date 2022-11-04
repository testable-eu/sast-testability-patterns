var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
var res;

function handleServer(req, response){
    res = response;
    var path = route.parse(req.url, true);

    if(req.url === '/'){
        res.writeHead(200, {"Content-Type" : "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    }else if(path.pathname === '/query/'){
        console.log(req.method);

        //PATTERN CODE {1} 
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        let b = query.name;
        const view = new TextEncoder().encode(b); //creates a new Uint8Array of encoded utf-8 elements from string
        res.writeHead(200, {"Content-Type" : "text/html"});
        //XSS since http require string variables or Uint8Array or BufferArray
        res.write(view);
        res.end();


    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');
