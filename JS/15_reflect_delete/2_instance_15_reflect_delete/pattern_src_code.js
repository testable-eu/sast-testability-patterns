/**
 * testability pattern: reflect_delete 
 * ----------------------------------------------
 * source: request.url
 * tarpit: Reflect.deleteProperty();
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
        const p = query.prop; 

        let o = {property1: b};

        Reflect.deleteProperty(o, p); //tarpit
        
        res.writeHead(200, {"Content-Type" : "text/html"});
        for(i in o){
            res.write(o[i]); //sink
        }
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

