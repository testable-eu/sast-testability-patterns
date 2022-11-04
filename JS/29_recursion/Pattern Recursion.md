# Pattern: Recursion

## Category

Function

## Definition

One of the way a function can call itself (recursion) is through _arguments.callee_.

## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
var b = 0;
function rec(val){
    if(b === 0){
        b = 1; 
        arguments.callee(val);
    }else{
        res.write(val);
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
res.writeHead(200, {"Content-Type" : "text/html"});
rec(a);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      | YES      |   YES   |    YES    |   YES      |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree and Babel parser.

```
if(path.isMemberExpression() && path.node.object != undefined){
	if(path.node.object.name === "arguments" && path.node.property.name === "callee"){
		...
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```
### Instance 2

- CATEGORY: D1
- SOURCESFEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
var arr;
function rec(val){
    if(arr.isArray){
        res.write(val); 
    }
    arr = [val];
    rec(val); 
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
res.writeHead(200, {"Content-Type" : "text/html"});
rec(a);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |     NO     |  YES        |    YES  |    YES    |   YES      |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree and Babel parser.

```
if(path.isMemberExpression() && path.node.object != undefined){
	if(path.node.object.name === "arguments" && path.node.property.name === "callee"){
		...
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
call within a loop:
while (recursion stop conditions not verified):
    function_of_recusion(args)
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
|        SheetJs        |      7      |
|        Meteor         |      1      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |      /      |
|          Vue          |      /      |
|        JQuery         |      /      |



