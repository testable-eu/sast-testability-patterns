# Pattern: Function Get Arguments

## Category

Functions

## Definition

Function call argument-to-parameter binding is important for inter-procedural data flow analysis for SAST tools. However, this could be a challenging task in JavaScript. 

For example, Different from other languages like C++ and PHP, defining two functions with the same name but different number of arguments does not lead to function overloading in JavaScript. Instead, the second function declaration (in the control flow) overwrites/redefines the first function declaration. This feature may cause confusion for SAST tools to determine which function is called, and hence how call arguments are mapped to the function parameters. 

Similarly, function definitions may use the special [`arguments`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments) object to access function call arguments. Also in these cases, call argument-to-parameter bindings may be inaccurate if the tool does not model the semantic of the `arguments` object.



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

// this redefines the previous function
function F(a, b){
	res.write(a);
	res.write(b);
}

const parsed = route.parse(req.url); // source
const query  = querystring.parse(parsed.query);
var b = query.name;
res.writeHead(200, {"Content-Type" : "text/html"});
F('a');  // it prints 2 'undefined' due to the redefinition of F. It does NOT call the first definition of F.
F('c', b); // sink
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
	if(there are at least two function definitions with the same name as the callee){
		STOP: PATTERN FOUND
	}
}
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
		res.write(arguments[i]); // sink
	}
}

const parsed = route.parse(req.url); // source
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
		res.write(arguments[i]); // sink
	}
}

const parsed = route.parse(req.url); // source
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
	if(in function arguments object is used){
		STOP: PATTERN FOUND
	}
}
```

- TRANSFORMATION:
explicity define arguments inside function definition

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



