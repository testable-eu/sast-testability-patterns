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

        //PATTERN CODE {1}
        //it takes element from a form 
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        var b_to_func = query.name;
		//always sanitize, no XSS vulnerability
	    res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(tcf(b_to_func)); //to convert from object/json to string
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
// to sanitize
function escapeHtml(text) {
	return text
	.replace(/&/g, "&amp;")
	.replace(/</g, "&lt;")
	.replace(/>/g, "&gt;")
	.replace(/"/g, "&quot;")
	.replace(/'/g, "&#039;");
}


function tcf(b) {
	var v = b;
	try{
		throw new Error('Exception');
	}catch(err){
		console.log('catch');
		return v;
	}finally{
		console.log('finally');
		//sanitize
		v = escapeHtml(v);
		return v;
	}
}


