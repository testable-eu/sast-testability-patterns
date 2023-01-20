# Pattern: Variadic/Rest Parameters

## Category

Functions

## Definition

The [rest parameter](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/rest_parameters) syntax (three dots) allows to represent an indefinite number of arguments as an array, also known as variadic function parameters. SAST tools that do not support the rest parameter syntax may fall short of mapping call arguments to their respective function parameters.

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
    res.write(val); // sink
}

const parsed = route.parse(req.url); // source
const query  = querystring.parse(parsed.query);
var b = query.name;
sum('a', 'b', 'c', b); // tarpit
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |   NO       |    NO   | YES     | NO        | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it. The node type of AST has to be a RestElement.

```
node.isRestElement()
```

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

