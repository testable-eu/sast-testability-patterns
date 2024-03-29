/**
 * testability pattern: object_clone 
 * ----------------------------------------------
 * source: request.url
 * tarpit: call Object.assign(target, source) for clone a source object into target
 * sink: response.send()
 */

var http = require('http');
var fs = require('fs');
var route = require('url');
const querystring = require('querystring');
var res = ''

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
        const parsed = route.parse(req.url);//source
        const query  = querystring.parse(parsed.query);
	    b = query.name;
	    obj1 = new myClass(b);
	    obj2 = new myClass('');
	    obj2 = Object.assign(obj2, obj1);
	    obj2.out(); 
            
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
class myClass{
	b = 'safe';
	constructor(val){
		this.b = val;
	}

	out(){
        //XSS
        res.writeHead(200, {"Content-Type" : "text/html"});
	    res.write(this.b);//sink
        res.end();	
	}
}

