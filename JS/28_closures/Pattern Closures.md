# Pattern: Closures

## Category

Functions

## Definition

In JavaScript there is possibility to create/define nested functions. In particular, they are called closures. In particular, the nested function is returned as an not already executed object by the "wrapper" one. The closure is the combination of the function returned and the lexical environment in which the function was declared (local variables included).

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



**Ideal discovery rule**:

```
if(return function definition){
	STOP: PATTERN FOUND
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```
path.isTryStatement() && path.node.handler.type === "CatchClause" && path.node.finalizer == undefined
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
rewrite function in classical way
```
```
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



**Ideal discovery rule**:

```
if(return function definition){
	STOP: PATTERN FOUND
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```
path.isTryStatement() && path.node.finalizer != undefined
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```
### Instance 3

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
//in JS there is no possibility to define private methods, so closures can be used to "emulate" them
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



**Ideal discovery rule**:

```
if(return function definition){
	STOP: PATTERN FOUND
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```
path.isTryStatement() && path.node.finalizer != undefined
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |             |
|        PayPal         |             |
|      SoundCloud       |             |
| Facebook Business SDK |             |
|      Vynchronize      |             |
|      Wiki Vnext       |             |
|         Uppy          |             |
|        SheetJs        |             |
|        Meteor         |             |
|        Express        |             |
|          Pug          |             |
|         Ember         |             |
|          Vue          |             |
|        JQuery         |             |

