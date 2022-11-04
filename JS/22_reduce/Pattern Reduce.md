# Pattern: Reduce

## Category

Function

## Definition

For each array element, it applies a callback in order to reduce the list of items to a single value. Then, the final value is returned from callback function.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
var array = ['first', 'second', b];
let result = array.reduce(function(accumulator, currentValue){return accumulator + currentValue}, ' ');

//XSS
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(result);
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |    NO      |    NO   |    YES  |    YES    |  YES       |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a CallExpression with callee.type MemberExpression and property name reduce.

```
if(path.isCallExpression && path.node.callee != undefined){
	if(path.node.callee.type == 'MemberExpression'){	
		let inner_node = path.node.callee;
		if(inner_node.property.name === "reduce"){
			...
		}
	}
}    
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
do not call reduce and directly call the internal function passed to reduce:
let result = r(array)
function r(array){
	accumulator = ''
	for (let i = 0; i<array.length; i++){
		accumulator = accumulator + ' ' + array[i]
	}
	return accumulator;
}
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     16      |
|        PayPal         |      /      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      /      |
|      Vynchronize      |      1      |
|      Wiki Vnext       |     12      |
|         Uppy          |     13      |
|        SheetJs        |      5      |
|        Meteor         |     35      |
|        Express        |      /      |
|          Pug          |      2      |
|         Ember         |      6      |
|          Vue          |     10      |
|        JQuery         |      /      |



