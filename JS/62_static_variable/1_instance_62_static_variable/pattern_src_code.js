/**
 * testability pattern: static_variable 
 * ----------------------------------------------
 * source: request.url
 * tarpit: Static var
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

        //PATTERN CODE {1}
        //it takes element from a form 
        const parsed = route.parse(req.url);//source
        const query  = querystring.parse(parsed.query);
        var b = query.name;
        res.writeHead(200, {"Content-Type" : "text/html"});
        c = new MyClass();
	    c.F(b); //set the static variable
	    res.write(c.F());//sink //the statiVar is not dead inside F, so it prints the previous value
        res.end();
            
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
class MyClass{
    static variable = 'safe';
    F(v){
        if(v != undefined){
            this.variable = v;
        }else{
            return this.variable;
        }
    }
    
}


