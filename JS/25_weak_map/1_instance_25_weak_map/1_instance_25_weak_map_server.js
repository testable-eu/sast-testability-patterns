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
        const b = query.name; 
        const wm1 = new WeakMap();
        const wm2 = new WeakMap();

        const obj1 = {},
              obj2 = function(){};

        wm2.set(obj1, b);
        wm1.set(obj2, 'foo'); 
        wm2.set(wm1, wm2);//keys and values can be any objects, also WeakMaps

        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(wm2.get(wm1).get(obj1));
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

