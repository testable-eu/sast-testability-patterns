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

        //PATTERN CODE {1}
        //it takes element from a form 
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        var a = query.name;
        f1(a);

    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
function f1(arg){
    
    utils = {
        f2: function(arg1){
            this.f3(arg1);
        },
        f3: function(arg2){
            //vulnerability
            res.writeHead(200, {"Content-Type" : "text/html"});
            res.write(arg2);
            res.end(); 
        }
    }
    this.utils.f2(arg);
}