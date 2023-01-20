# Pattern: Reflect Get

## Category

Object

## Definition

The [Reflect.get()] (https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect/get) static method works like getting a property from an object as a function. 

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;   

const obj = {};
Reflect.set(obj, 'input', b);
        
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(Reflect.get(obj, 'input'));
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |     NO     |    NO   |    YES  |   YES     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if(call Reflect.get)
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
if (path.isCallExpression()){
	if(path.node.callee.type == "MemberExpression" && path.node.callee.object != undefined && path.node.callee.property != undefined){
		if(path.node.callee.object.type === "Identifier" && path.node.callee.property.type === "Identifier"){
		if(path.node.callee.object.loc.identifierName === "Reflect" && path.node.callee.property.loc.identifierName === "get"){
			//PATTERN FOUND
		}
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
call explicity get without reflection
```
```
### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;   
        
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(Reflect.get(['a', b], 1));
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |  NO        |    NO   |    NO   |    YES    |  YES       |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if(call Reflect.get)
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
if (path.isCallExpression()){
	if(path.node.callee.type == "MemberExpression" && path.node.callee.object != undefined && path.node.callee.property != undefined){
		if(path.node.callee.object.type === "Identifier" && path.node.callee.property.type === "Identifier"){
		if(path.node.callee.object.loc.identifierName === "Reflect" && path.node.callee.property.loc.identifierName === "get"){
			//PATTERN FOUND
		}
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      /      |
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
|         Ember         |      2      |
|          Vue          |      /      |
|        JQuery         |      /      |



