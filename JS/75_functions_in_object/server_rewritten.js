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
        //it takes element from a form 
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        var a = query.name;
        //transformation number 1: copy of function f1 here:
        var utils = {
            f2: function(arg1){
                //transformation number 2: copy of function f3 here
                res.writeHead(200, {"Content-Type" : "text/html"});
                res.write(arg1);
                res.end(); 
            },
            f3: function(arg2){
                //vulnerability
                res.writeHead(200, {"Content-Type" : "text/html"});
                res.write(arg2);
                res.end(); 
            }
        }
        //transformation number 3: copy of function f2 here
        //utils.f2(a);
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(a);
        res.end(); 

    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');
