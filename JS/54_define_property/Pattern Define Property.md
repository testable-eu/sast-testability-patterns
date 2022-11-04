# Pattern: Define Property

## Category

Object

## Definition

## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;

const obj1 = {};

Object.defineProperty(obj1, 'prop1', {
    value: 'safe',
    writable: true
});

obj1.prop1 = b;

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(obj1.prop1);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |   YES       |    NO   |    YES    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
if(path.isMemberExpression && path.node.property != undefined){
	if(path.node.property.name === "defineProperty"){
		...
	}	
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
write property explicity in class definition
```
```
### Instance 2

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;

const obj1 = {};

Object.defineProperty(obj1, 'prop1', {
    value: 'safe',
    writable: false
});

obj1.prop1 = b;

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(obj1.prop1);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |       -   |   YES       |    -   |    YES    | NO         |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
if(path.isMemberExpression && path.node.property != undefined){
	if(path.node.property.name === "defineProperty"){
		...
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
|      Mattermost       |     322     |
|        PayPal         |      8      |
|      SoundCloud       |      /      |
| Facebook Business SDK |     13      |
|      Vynchronize      |      6      |
|      Wiki Vnext       |      /      |
|         Uppy          |     38      |
|        SheetJs        |     41      |
|        Meteor         |      9      |
|        Express        |      5      |
|          Pug          |      /      |
|         Ember         |     26      |
|          Vue          |     33      |
|        JQuery         |      3      |

