/**
 * testability pattern: proto 
 * ----------------------------------------------
 * source: request.url
 * tarpit: __proto__ property
 * sink: response.send()
 */

var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');

// PATTERN CODE 
function instanceOf(object, constructor) {
    object = object.__proto__;
    while (object != null) {
        if (object == constructor.prototype)
            return true;
        object = object.__proto__;
    }
    return false;
}

function One(){
    this.prop = 'one';
}

function Two(){
    this.prop2 = 'two';
}


function handleServer(req, res){
    var path = route.parse(req.url, true);

    if(req.url === '/'){
        res.writeHead(200, {"Content-Type" : "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    }else if(path.pathname === '/query/'){

        // PATTERN CODE 
        const parsed = route.parse(req.url); // source
        const query  = querystring.parse(parsed.query);
        var b = query.name;
        One.prototype.name = 'one';
        Two.prototype = new One;
        var t = new Two;
        
        res.writeHead(200, {"Content-Type" : "text/html"});
        if(instanceOf(t, Two)){
            One.prototype.name = b;
            // XSS
            res.write(t.name); // sink
        }
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

