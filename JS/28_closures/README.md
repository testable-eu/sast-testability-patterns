# Pattern: Closures

## Category

Functions

## Definition

In JavaScript, it is possible to create nested functions called [closures](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures). In particular, the nested function is returned as an "not-already-executed-object" by the "wrapper" object. The closure is the combination of the returned function and the lexical environment in which the function was declared (local variables included). Modeling and analyzing closures requires SAST tools to keep the state of local variables of nested functions everytime they are called, which is challenging. 

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function greet(name){
	return function(){
		return name;
	};
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
var v = greet(b);
res.writeHead(200, {"Content-Type" : "text/html"});
// v is now the inner (nested) function of greet
res.write(v(b)); 
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |   NO       |  YES        | YES     | YES       | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:
```
if(return function definition){
	STOP: PATTERN FOUND
}
```

- TRANSFORMATION:
rewrite function in classical way

### Instance 2

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function greet(name){
	return function(){
		res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(name); 
        res.end();
	};
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
var v = greet(b);
// v is now the inner (nested) function of greet
v();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |   YES       | YES     | YES       | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:
```
if(return function definition){
	STOP: PATTERN FOUND
}
```

- TRANSFORMATION:
rewrite function in classical way


### Instance 3

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
// in JS, there is no such concept as that of private methods, so closures can be used to "emulate" them
var p = (function() {
	function printVal(val) {
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(val); 
        res.end();
	}
  
	return {
	  printable: function(b) {
		printVal(b);
	  }
	};
  })();

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
p.printable(b);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |      NO    |    NO   |    NO   |    NO   | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:
```
if(return function definition){
	STOP: PATTERN FOUND
}
```

- TRANSFORMATION:
rewrite function in classical way

