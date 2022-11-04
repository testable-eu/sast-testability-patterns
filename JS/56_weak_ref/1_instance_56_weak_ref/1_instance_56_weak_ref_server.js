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
        //WeakRef needs an object
        let b = [query.name];
        let c = new Counter(b); 

        res.writeHead(200, {"Content-Type" : "text/html"});
        // Get the element from the weak reference, if it still exists
        let v = c.ref.deref();
        res.write(v[0]);
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
class Counter {
    constructor(element) {
      this.ref = new WeakRef(element);
    }
}

