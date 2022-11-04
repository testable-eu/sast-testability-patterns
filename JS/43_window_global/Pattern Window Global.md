# Pattern: Window Global

## Category

Built-in Function

## Definition

Differently from PHP, in JavaScript does not exist the $GLOBALS array through which have access to all the global variables. 
On the other hand, in JS, all the global variables and functions can be retrieved by _global_

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function F() {
    // XSS vulnerability
	res.write(global.b);
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
global.b = b;

res.writeHead(200, {"Content-Type" : "text/html"});
F();
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |   NO       |  YES        |     NO  |     NO    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches implementation.

Based on Abstract Syntax Tree and Babel parser.

The pattern can be found considering the node as MemberExpression with an Identifier Object with name global.

```
if(path.isMemberExpression() && path.node.object != undefined){
	if(path.node.object.type === "Identifier" && path.node.object.name === "global"){
		//pattern found
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
rewrite global everywhere as a normal variable external to function
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     26      |
|        PayPal         |      /      |
|      SoundCloud       |     10      |
| Facebook Business SDK |      /      |
|      Vynchronize      |      /      |
|      Wiki Vnext       |      3      |
|         Uppy          |     37      |
|        SheetJs        |     46      |
|        Meteor         |     81      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |     12      |
|          Vue          |      9      |
|        JQuery         |      2      |

