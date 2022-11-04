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
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        let b = query.name;
        let ws = new WeakSet();
        //WeakSet needs an object
        const v = [b];
        ws.add(v);

        res.writeHead(200, {"Content-Type" : "text/html"});
        //necessary to print elements of WeakSet
        const { inspect } = require('util');
        res.write(inspect(ws, { showHidden: true }));
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

