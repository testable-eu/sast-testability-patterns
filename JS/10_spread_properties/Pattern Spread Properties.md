# Pattern: Spread Properties

## Category

Functions

## Definition

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
const b = query.name;   

let obj1 = { foo: 'bar', x: 42, y: b }
let clonedObj = { ...obj1 }

res.writeHead(200, {"Content-Type" : "text/html"});       
for(v in clonedObj){
    res.write(clonedObj[v]);
}
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |  NO        |    NO   |   YES   |   YES     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if( new object through spread element)
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
if (path.isVariableDeclarator() && path.node.loc != undefined && path.node.init != null){
	if(path.node.init.type == "ObjectExpression" && path.node.init.properties != undefined){
		for(i in path.node.init.properties){
			let inner_node = path.node.init.properties[i];
			if(inner_node.type === "SpreadElement")
				//PATTERN FOUND
		}
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
assign explicity each property

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     126     |
|        PayPal         |      /      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      /      |
|      Vynchronize      |      /      |
|      Wiki Vnext       |      1      |
|         Uppy          |     32      |
|        SheetJs        |      /      |
|        Meteor         |      /      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |      /      |
|          Vue          |      /      |
|        JQuery         |      /      |





