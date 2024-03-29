/**
 * testability pattern: vulnerable_key_dictionary 
 * ----------------------------------------------
 * source: request.url
 * tarpit: dictionary;
 * sink: response.send();
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
        console.log(req.method);

        //PATTERN CODE
        //it takes element from a form 
        const parsed = route.parse(req.url);//source
        const query  = querystring.parse(parsed.query);
        res.writeHead(200, {"Content-Type" : "text/html"});
        var a = query.name;
        var dictionary = {
            foo: 'foo',
            'doo': 'doo',
            10: 100,

        };
        dictionary[a]=10;

        for(var i in dictionary){
            //XSS
            res.write(i.toString());//sink
        }
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');
