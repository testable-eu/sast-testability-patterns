/**
 * testability pattern: type_juggling 
 * ----------------------------------------------
 * source: request.url
 * tarpit: String.fromCharCode(od);
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
	    var number = query.name1;
	    var stringa = query.name2;
	    var result = '';
	    //for each character in 'stringa'
	    for(let i = 0; i<number; i++){
		    //take index of each character
		    var od = stringa.charCodeAt(i) + 1;
		    od = od - 1;
		    //return index and concatenate with res
		    result = result.concat(String.fromCharCode(od));
	    }
	    // XSS vulnerability, will print word
	    res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(result);//sink
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');


