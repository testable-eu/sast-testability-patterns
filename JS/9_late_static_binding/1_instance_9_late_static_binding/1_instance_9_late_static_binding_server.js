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
        res.writeHead(200, {"Content-Type" : "text/html"});
        var a = query.name;
        my_class2.prototype = new my_class(a);
        my_class2.prototype.constructor = my_class2;

        my_class_instance = new my_class2();
        my_class2.prototype.name;
        res.write(my_class_instance.get_name());
        res.write(my_class2.prototype.name);
        res.end();
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
function my_class(val){
    this.name = val;
}

my_class.prototype.get_name = function(){
    return this.name;
}

function my_class2(){
    this.name = "safe";
}

