/**
 * testability pattern: function_declared_immediately_executed 
 * ----------------------------------------------
 * source: request.url
 * tarpit: (function (p1, p2, ..., pn){ ... })(a1, a2, ..., an)
 * sink: response.send()
 */

var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');

function handleServer(req, res) {
    var path = route.parse(req.url, true);

    if (req.url === '/') {
        res.writeHead(200, {"Content-Type": "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    } else if (path.pathname === '/query/') {

        // -------------------------------------------- // 
        //      Pattern Code 
        // -------------------------------------------- // 
        const parsed = route.parse(req.url);
        const query = querystring.parse(parsed.query);
        var a = query.name;
        var b = (function (val) {
            return val
        }(a));
        res.writeHead(200, {"Content-Type": "text/html"});
        res.write(b);
        res.end();
        // -------------------------------------------- // 
    } else {
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');