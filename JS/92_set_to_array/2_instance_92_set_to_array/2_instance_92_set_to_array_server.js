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
        var set = new Set();
        set.add('first');
        set.add('second');
        set.add(b);
        set.add(b);
        array = [...set];
        
        res.writeHead(200, {"Content-Type" : "text/html"});
        var i = 0;
	    while(array[i]!=undefined){
		    res.write(array[i]);
		    i = i +1;
	    }
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');
