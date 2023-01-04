/**
 * testability pattern: generator delegation
 * ----------------------------------------------
 * source: request.url
 * tarpit: yield object
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

        //PATTERN CODE {1}
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        var b_to_func = query.name;
        var func_to_call = query.func.toString().trim();

        const iterator = func2(b_to_func, func_to_call);
        
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(iterator.next().value);	
        res.end();
            
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
global.func1 = function* func1(val) {
    yield val;
}
  
function* func2(val, func) {
    yield* global[func](val);
}
  



