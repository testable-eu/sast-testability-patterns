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
        //it takes element from a form 
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        var b = 'abcde';
        var cond = 1;
        res.writeHead(200, {"Content-Type" : "text/html"});

        loop1: 
        for(let i = 0; i<2; i++){
            res.write(b); 
            b = query.name;
            if(cond == 1){
                cond = 0;
                continue loop1;
            }
        }        
        
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

 
 
