# Pattern: Reflect Delete

## Category

Functions

## Definition
[Reflect](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect) is a built-in object that provides methods for interceptable JavaScript operations. In particular the [Reflect.deleteProperty()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect/deleteProperty) static method allows to delete properties and its usage in a program may break the data flow analysis in SAST tools.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;   

let o = {property1: b};

Reflect.deleteProperty(o, 'property1');
        
res.writeHead(200, {"Content-Type" : "text/html"});
for(i in o){
    res.write(o[i]);
}
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  -  |     -     |    -   |   YES   |   YES     | NO         |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if(call Reflect.deleteProperty)
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
if (path.isCallExpression()){
	if(path.node.callee.type == "MemberExpression" && path.node.callee.object != undefined && path.node.callee.property != undefined){
		if(path.node.callee.object.type === "Identifier" && path.node.callee.property.type === "Identifier"){
		if(path.node.callee.object.loc.identifierName === "Reflect" && path.node.callee.property.loc.identifierName === "deleteProperty"){
			//PATTERN FOUND
		}
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```js
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;   

let o = {property1: b};

//Reflect.deleteProperty(o, 'property1');
//pattern transformation
delete o['property1'];
        
res.writeHead(200, {"Content-Type" : "text/html"});
for(i in o){
    res.write(o[i]);
}
res.end();
```
### Instance 2

- CATEGORY: D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;
const p = query.prop;   

let o = {property1: b};

Reflect.deleteProperty(o, p);
        
res.writeHead(200, {"Content-Type" : "text/html"});
for(i in o){
    res.write(o[i]);
}
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |    NO      |    NO   |   YES   |     YES   | YES         |
Measurements Date: 21 July 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if(call Reflect.deleteProperty)
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
if (path.isCallExpression()){
	if(path.node.callee.type == "MemberExpression" && path.node.callee.object != undefined && path.node.callee.property != undefined){
		if(path.node.callee.object.type === "Identifier" && path.node.callee.property.type === "Identifier"){
		if(path.node.callee.object.loc.identifierName === "Reflect" && path.node.callee.property.loc.identifierName === "deleteProperty"){
			//PATTERN FOUND
		}
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
set property to null
```js
```
### Instance 3

- CATEGORY: D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;
var p = query.prop; 

let o = {property1: b};

if(p != 'property1'){
    p = 'property1';
}
Reflect.deleteProperty(o, p);
        
res.writeHead(200, {"Content-Type" : "text/html"});
for(i in o){
    res.write(o[i]);
}
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  -  |    -      |   -    |  YES    |     YES   | NO         |
Measurements Date: 21 July 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if(call Reflect.deleteProperty)
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
if (path.isCallExpression()){
	if(path.node.callee.type == "MemberExpression" && path.node.callee.object != undefined && path.node.callee.property != undefined){
		if(path.node.callee.object.type === "Identifier" && path.node.callee.property.type === "Identifier"){
		if(path.node.callee.object.loc.identifierName === "Reflect" && path.node.callee.property.loc.identifierName === "deleteProperty"){
			//PATTERN FOUND
		}
	}
}
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
|      Mattermost       |      6      |
|        PayPal         |      /      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      /      |
|      Vynchronize      |      /      |
|      Wiki Vnext       |      /      |
|         Uppy          |      /      |
|        SheetJs        |      /      |
|        Meteor         |      /      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |      /      |
|          Vue          |      /      |
|        JQuery         |      /      |

