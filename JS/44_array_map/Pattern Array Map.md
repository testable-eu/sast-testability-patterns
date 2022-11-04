# Pattern: Array Map

## Category

Built-In Function

## Definition

Array map in JS creates a new array populated with the results of calling a provided function on every element in the calling array.

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;

func = function(a){
	res.write(a); //to convert from object/json to string 
}  

var input = [b, b, b];
res.writeHead(200, {"Content-Type" : "text/html"});
var map = input.map(function(x){func(x);});
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |    NO   |    YES  |   YES     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a CallExpression with callee.type MemberExpression and property name map.

```
if(path.isCallExpression && path.node.callee != undefined){
	if(path.node.callee.type == 'MemberExpression'){	
		let inner_node = path.node.callee;
		if(inner_node.property.name === "map"){
			...
		}
	}
}    
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
rewrite function as normal function (see reduce pattern)
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     196     |
|        PayPal         |     20      |
|      SoundCloud       |      1      |
| Facebook Business SDK |      4      |
|      Vynchronize      |     20      |
|      Wiki Vnext       |     91      |
|         Uppy          |     81      |
|        SheetJs        |     392     |
|        Meteor         |     195     |
|        Express        |     20      |
|          Pug          |     17      |
|         Ember         |     230     |
|          Vue          |     122     |
|        JQuery         |     72      |

