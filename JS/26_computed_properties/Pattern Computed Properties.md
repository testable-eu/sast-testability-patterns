# Pattern: Computed Property

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

let o = {['b' + 'ar']: b};
        
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(o.bar);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |      NO    |    NO   |    YES  |    YES    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if(object.property has binary expression){
	STOP: PATTERN FOUND
}
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
if (path.isObjectExpression() && path.node.properties[0] != undefined) {
	path.node.properties.forEach(n => {
    	if (n.type === "ObjectProperty" && n.key != undefined) {
        	if (n.key.type === "BinaryExpression") {
        		//PATTERN FOUND
			}
		}
	});
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
write it just before: 
v = 'b' + 'ar'
let o = {v: b};

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     2       |
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

