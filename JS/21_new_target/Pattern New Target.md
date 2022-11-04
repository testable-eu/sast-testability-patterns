# Pattern: New Target

## Category

Functions

## Definition
_new.target_ lets to detect if a function has been called with _new_ or not. (normally is undefined).

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function Foo(val){
    if(!new.target){ res.write("cannot pass "+val+" to function without new")};
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
res.writeHead(200, {"Content-Type" : "text/html"});
Foo(query.name);
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |     NO     |   YES    |   YES   |     NO    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
if(path.isUnaryExpression && path.node.argument != undefined){
	let inner_node = path.node.argument;
	if(inner_node.meta != undefined){
		if(inner_node.meta.name === "new" && inner_node.property.name === "target"){
        	//found pattern
		}
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
developer intervention
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





