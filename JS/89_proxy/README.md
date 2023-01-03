# Pattern: Proxy

## Category

Proxy

## Definition

Proxy object permits to intercept certain operations and implement custom behaviors. Proxy object defines a _target_ and an _handler_ object in which _get_ trap is implemented. This way, a proxied object will not return _undefined_ when gets undefined properties. SAST tools may not be able to capture and model such caller-callee relationships. 

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
var handler = {
    defineProperty(target, key, descriptor){
        return prop(key, 'define', target, descriptor);
    },
    get: function(target, name){
        return name in target? target[name]: 'proxy prop not defined';
    }
}

function prop(key, action, target, descriptor){    
    if(action === 'define'){
        target[key] = descriptor;
        return true;
    }   
    return false;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
let p = new Proxy({}, handler);
p.b = b;

res.writeHead(200, {"Content-Type" : "text/html"});       
res.write(p.b.value);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |      NO    |    NO   |     YES |       YES |        YES |
Measurements Date: 20 May 2021

- DISCOVERY:

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it. The node type of AST has to be a NewExpression with callee.name to be a Proxy. 

```
if(path.isNewExpression && path.node.callee != undefined){
	if(path.node.callee.name === 'Proxy'){
	 ...
	}
}
```

However, the above discovery rule is an over-approximation and can yield both FPs and FNs. 


- TRANSFORMATION:

Call directly the defined property and ask for developer intervention

### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
var handler = {
    defineProperty(target, key, descriptor){
        return prop(key, 'define', target, descriptor);
    },
    get: function(target, name){
        return name in target? target[name]: 'proxy prop not defined';
    }
}

function prop(key, action, target, descriptor){    
    if(key[0] === '_'){
        return false
    }
    if(action === 'define'){
        target[key] = descriptor;
        return true;
    }   
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
let p = new Proxy({}, handler);
p._secret = b;

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(p._secret);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES |        -          | -         | YES | YES | NO |
Measurements Date: 20 May 2021




