# Pattern: Variadic/Rest Parameters

## Category

Functions

## Definition

The rest parameter syntax (three dots) allows to represent in indefinite number of arguments as an array. The ... permits to put all the arguments passed to the function into an array.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function sum(...numbers){
    res.writeHead(200, {"Content-Type" : "text/html"});
    numbers.forEach(out);
    res.end();
}

function out(val){
	// XSS vulnerability
    res.write(val); 
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
sum('a', 'b', 'c', b);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |   NO       |    NO   | YES     | NO        | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a RestElement.

```
node.isRestElement()
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
function sum(v1, v2, v3, v4, v5){
    res.writeHead(200, {"Content-Type" : "text/html"});
    out(v1);
    out(v2);
    out(v3);
    out(v4);
    out(v5);
    res.end();
}

function out(val){
	// XSS vulnerability
    res.write(val); 
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
sum('a', 'b', 'c', b);
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     161     |
|        PayPal         |      3      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      /      |
|      Vynchronize      |      /      |
|      Wiki Vnext       |      3      |
|         Uppy          |     15      |
|        SheetJs        |      /      |
|        Meteor         |     65      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |     48      |
|          Vue          |      5      |
|        JQuery         |      1      |













