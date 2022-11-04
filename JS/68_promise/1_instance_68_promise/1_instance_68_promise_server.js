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
        const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        var b = query.name;
        
        
        Promise.all([ func(b)]).then((values)=> {
            res.writeHead(200, {"Content-Type" : "text/html"});
            //values are in array form
            for(let i=0; i<values.length; i++){
                res.write(values[i]);
            }
            res.end();
        });
        
    
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');

//PATTERN CODE {2}
function func(name){
    return new Promise(function(resolve, reject){
        try{
            name = name + ''; //do something
        }catch(Error){
            reject(Error);
        }   
        resolve(name);
    });  
}