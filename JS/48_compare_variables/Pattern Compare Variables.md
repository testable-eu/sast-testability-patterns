# Pattern: Compare Variables

## Category

Variables

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- SOURCESFEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;

var b = 5;
res.writeHead(200, {"Content-Type" : "text/html"});

if(a === b){
	//no vulnerability
	res.write(a);
}

c = "7";
if(a == c){
	//no vulnerability
	res.write(a);
}
        
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |  NO        |   YES       |     YES |    YES    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be an BinaryExpression and then check on operator is performed.

```
path.isBinaryExpression() && (path.node.operator == "===" || path.node.operator == "==" || path.node.operator == "==" || path.node.operator == "!==")
```

**Note**: also != and !== cases have been included.



- PRECONDITIONS:
   1.
- TRANSFORMATION:
developer intervention
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |    2226     |
|        PayPal         |     393     |
|      SoundCloud       |     16      |
| Facebook Business SDK |     27      |
|      Vynchronize      |     827     |
|      Wiki Vnext       |     326     |
|         Uppy          |     694     |
|        SheetJs        |    16680    |
|        Meteor         |    4857     |
|        Express        |     205     |
|          Pug          |     293     |
|         Ember         |     576     |
|          Vue          |    1168     |
|        JQuery         |    1318     |

