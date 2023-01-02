# Pattern: Callback Function

## Category

Functions

## Definition

The function is assigned to a variable and passed as a parameter to another function.

## Instances

### Instance 1

- CATEGORY:  D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
//callback function
//the idea is to call a function "dynamically", that print on 
//console the elements of a form (e.g. when it is asked to
//you if the info provided are correct). XSS
function MyFunction(n) {
    //it takes element from a form 
    return n;
}
 
 function print(n, message) {
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(message(n)); 
    res.end();
 }

// Pass `MyFunction` as an argument to `print` function
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var n = query.name;
print(n, MyFunction);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |    NO      |    NO   | NO      | YES       | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
if(function call){
	arg = function argument
	check:
		for(every function imported and declared){
			if(arg is function){
				STOP: PATTERN FOUND
			}
		}	
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser. 

Data Structure used is the following:

```
Global_AST: { type: ‘Program’, 
			  body: asts --------- > { key: file_name, 
			  						   value: AST, 
			  						   functions_set: functions --------- > { key: function_name, 
			  						   										  value: entry_point_node_ast }, 										classes_set: functions --------- > { key: class_name, 
			  						   										value: entry_point_node_ast },				   						   external: [imported_files]
```

By this way, we have for every file in the project a list of functions and imported files.

An AST traverse to figure out the callback function pattern

```
if(path.isCallExpression()){
	ast.body.forEach(e =>{
		if (e.functions.has(path.node.callee.name)) {
			for (i in path.node.arguments) {
				if (e.functions.has(path.node.arguments[i].name)) {
					//pattern found
				}
			}
		}
	}); 
}
```

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```js
function MyFunction(n) {
    //it takes element from a form 
    return n;
}
 
 function print(n) {
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(MyFunction(n)); 
    res.end();
 }

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const n = query.name;
print(n);
```
### Instance 2

- CATEGORY:  D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
//callback function
//the idea is to call a function "dynamically", that print on 
//console the elements of a form (e.g. when it is asked to
//you if the info provided are correct). XSS
global.MyFunction = function MyFunction(n) {
    //it takes element from a form 
    return n;
}
 
 function print_f(n, message) {
    res.writeHead(200, {"Content-Type" : "text/html"});
	var m = global[message](n);
    res.write(m);
    res.end();
 }

// Pass `MyFunction` as an argument to `print` function
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var n = query.name1;
var m = query.name2.toString().trim();
print_f(n, m);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |      NO    |    NO   |     NO  |    YES    | YES        |
Measurements Date: 17 July 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser. 

```
```

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```js
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      /      |
|        PayPal         |    1711     |
|      SoundCloud       |     986     |
| Facebook Business SDK |      /      |
|      Vynchronize      |     113     |
|      Wiki Vnext       |      /      |
|         Uppy          |      /      |
|        SheetJs        |    8997     |
|        Meteor         |     106     |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |      3      |
|          Vue          |    5385     |
|        JQuery         |     21      |

