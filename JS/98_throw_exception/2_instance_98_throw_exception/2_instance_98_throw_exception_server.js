var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
var res = '';

function handleServer(req, response){
    res = response;
    var path = route.parse(req.url, true);

    if(req.url === '/'){
        res.writeHead(200, {"Content-Type" : "text/html"});
        fs.createReadStream('./index.html').pipe(res);
    }else if(path.pathname === '/query/'){
        console.log(req.method);

        //PATTERN CODE {1}
        //it takes element from a form 
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        var b_to_func = query.name1;
        var to_invert = query.name2.toString().trim();;
	    try{
		    global[to_invert](0, b_to_func);
            global[to_invert](1, b_to_func);
	    }catch(err){
            //XSS
            res.writeHead(200, {"Content-Type" : "text/html"});
	    // XSS vulnerability
            res.write("Exception " + err.message); 
            res.end();
	    }
            
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
global.inverse = function inverse(x,b) {
    if(x != 0){
		throw new Error(b);
	}
	return x;
}

