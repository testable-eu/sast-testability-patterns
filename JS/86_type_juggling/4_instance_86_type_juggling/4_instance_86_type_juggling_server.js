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
        var number = query.name1;
        var stringa = query.name2;
        var result = stringa.slice(0, number -2);
        var string1 = '';
        var string2 = '';

        for(let i = number-2; i<number; i++){
            var od = stringa.charCodeAt(i) + 1;
            od = od - 1;
            if(i == number-2){
                string1 = od;
            }else{
                string2 = od;
            }  
        }
        
        //return index and concatenate with res
        result = result.concat(String.fromCharCode(string1));
        result = result.concat(String.fromCharCode(string2));

        // XSS vulnerability, will print word
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(result); 
        res.end();
    }else{
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end('Page not found');
    }
}

http.createServer(handleServer).listen(8080);
console.log('Server running on port 8080.');


