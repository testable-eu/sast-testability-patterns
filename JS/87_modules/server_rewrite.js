var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
//var modules = require('./modules/b');

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
        var b = query.name;
        /*instead of define a function in another file, the function
        is defined directly in this file => it reduces modularity. Not always possible*/
        assign(b);
        
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(get());   
        res.end(); 
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE - REWRITTEN {2}
function assign(val){
    this.b_in_modules = val;
}

function get(){
    return this.b_in_modules;
}