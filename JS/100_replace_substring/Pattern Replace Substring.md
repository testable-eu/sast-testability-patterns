# Pattern: Replace Substring

## Category

String

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
const p = 'The quick brown fox jumps over the lazy dog. If the dog reacted, was it really lazy?';
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(p.replace('dog', a));
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |  YES     |    YES  |    YES    |  YES       |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule:**

```
search for 'replace' called function
```

**Implementation**:

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a CallExpression with callee.type MemberExpression and property name replace.

```
if(path.isCallExpression && path.node.callee != undefined){
	if(path.node.callee.type == 'MemberExpression'){	
		let inner_node = path.node.callee;
		if(inner_node.property.name === "replace"){
			...
		}
	}
} 
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
reassigned string with value of the replace if string is directly available, otherwise ask to developer
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     97      |
|        PayPal         |     17      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      2      |
|      Vynchronize      |     48      |
|      Wiki Vnext       |     40      |
|         Uppy          |     52      |
|        SheetJs        |    2419     |
|        Meteor         |     353     |
|        Express        |     16      |
|          Pug          |     39      |
|         Ember         |     75      |
|          Vue          |     146     |
|        JQuery         |     143     |



