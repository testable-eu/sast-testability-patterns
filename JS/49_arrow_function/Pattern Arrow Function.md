# Pattern: Arrow Function

## Category

Variables

## Definition

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
//it takes element from a form 
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
message = a;
func = (x) => message = message + x;
//vulnerability
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(func('safe'));
res.end(); 
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |       NO   | YES      |     NO  |      YES  |  YES       |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be an ArrowFunctionExpression.

```
node.isArrowFunctionExpression()
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
message = a;

//arrow function is rewrote by this way
const func = function(x){ return message = message + x};

//vulnerability
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(func('safe'));
res.end(); 
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |    11907    |
|        PayPal         |     348     |
|      SoundCloud       |     47      |
| Facebook Business SDK |     234     |
|      Vynchronize      |      1      |
|      Wiki Vnext       |     524     |
|         Uppy          |    2069     |
|        SheetJs        |     126     |
|        Meteor         |    2350     |
|        Express        |      /      |
|          Pug          |     32      |
|         Ember         |    4008     |
|          Vue          |    3510     |
|        JQuery         |     16      |

