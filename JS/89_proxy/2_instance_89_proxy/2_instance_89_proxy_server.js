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

        //PATTERN CODE 
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        var b = query.name;
        let p = new Proxy({}, handler);
        p._secret = b;
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(p._secret);
        res.end();
          
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
var handler = {
    defineProperty(target, key, descriptor){
        return prop(key, 'define', target, descriptor);
    },
    get: function(target, name){
        return name in target? target[name]: 'proxy prop not defined';
    }
}

function prop(key, action, target, descriptor){    
    if(key[0] === '_'){
        return false
    }
    if(action === 'define'){
        target[key] = descriptor;
        return true;
    }   
}