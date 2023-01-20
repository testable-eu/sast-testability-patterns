/**
 * testability pattern: while_break 
 * ----------------------------------------------
 * source: request.url
 * tarpit: while(cond1) { if(cond2){ break; } }
 * sink: response.send()
 */

var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');

// pattern code
function F(val){
    let return_value='returned_value';
    let index = 0;
    while(true){
        index ++;
        if(index === 1){
            break; // tarpit
        }
        // dead code
        return_value = val;
    }
    return return_value;
}

function handleServer(req, res){
    var path = route.parse(req.url, true);

    if(req.url === '/'){
        res.writeHead(200, {"Content-Type" : "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    }else if(path.pathname === '/query/'){

        const parsed = route.parse(req.url); // source
        const query  = querystring.parse(parsed.query);
        let b = query.name;

        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(F(b)); // sink
        res.end();

    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

