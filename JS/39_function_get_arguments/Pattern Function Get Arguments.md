# Pattern: Function Get Arguments

## Category

Functions

## Definition

Differently from PHP, in JavaScript it is possible to define two equivalent name functions with a different number of arguments. The latter is the redeclaration of the first one.

## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function F(a){
	res.write(a);
}

//this redefines the previous function
function F(a, b){
	res.write(a);
	res.write(b);
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
res.writeHead(200, {"Content-Type" : "text/html"});
// F('a'); //it prints 2 'undefined' due to the redefinition of F. but cannot send it back in packet.
F('a', 'b');
F('c', b);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    YES      |    YES  |     YES   | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
if(function call && finite arguments){
	if(in function arguments variable is used){
		STOP: PATTERN FOUND
	}
}
```

Based on Abstract Syntax Tree with Babel parser for second challenge and Esprima for the first one.

```
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
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
function F(){
	for (var i = 0; i < arguments.length; i++) {
        //XSS
		res.write(arguments[i]);
	}
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
res.writeHead(200, {"Content-Type" : "text/html"});
F('1', '2', '3', b);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |    NO      |    NO   |    YES  |    NO     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
if(function call && finite arguments){
	if(in function arguments variable is used){
		STOP: PATTERN FOUND
	}
}
```

Based on Abstract Syntax Tree with Babel parser for second challenge and Esprima for the first one.

```
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```
### Instance 3

- CATEGORY: D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
global.F = function F(){
	for (var i = 0; i < arguments.length; i++) {
		res.write(arguments[i]);
	}
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
var f = query.func.toString().trim();
res.writeHead(200, {"Content-Type" : "text/html"});
global[f]('1', '2', '3', b);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |    NO      |   NO    |   NO   |   NO      | YES        |
Measurements Date: 16 July 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
if(function call && finite arguments){
	if(in function arguments variable is used){
		STOP: PATTERN FOUND
	}
}
```

Based on Abstract Syntax Tree with Babel parser for second challenge and Esprima for the first one.

```
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
explicity define arguments inside function definition
```
```
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



