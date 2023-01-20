/**
 * testability pattern: unset_element_array 
 * ----------------------------------------------
 * source: request.url
 * tarpit: array.splice(i, j)
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

        // -------------------------------------------- // 
        //      Pattern Code 
        // -------------------------------------------- // 
        const parsed = route.parse(req.url); // source  
        const query  = querystring.parse(parsed.query);
        var c = query.name;
        array = ['a', 'b', c, 'd'];
        array.splice(3, 1); // tarpit
        res.writeHead(200, {"Content-Type" : "text/html"});
        array.forEach(element => {
            res.write(element); // sink
        });
        res.end();
        // -------------------------------------------- // 
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');
