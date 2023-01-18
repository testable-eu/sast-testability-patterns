# Pattern: Inheritance

## Category

Object

## Definition

In Js, as in PHP there is the possibility to create a new class that extends another, by inheriting from that variables and methods.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class myClass{
	constructor(val){
        //XSS
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(val);
        res.end();	
	}
}

class secondMyClass extends myClass{}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
b = query.name;
obj = new secondMyClass(b);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |       NO   |    NO    |     NO  |       YES |   YES      |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a ClassDeclaration and the superClass attribute has to be not  null.

```
(node.isClassDeclaration() || node.isClassExpression()) && path.superClass !== null
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
class myClass{
	constructor(val){
        //XSS
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(val);
        res.end();	
	}
}

class secondMyClass{
    constructor(val){
        //XSS
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(val);
        res.end();	
	}
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
b = query.name;
obj = new secondMyClass(b);
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     384     |
|        PayPal         |      /      |
|      SoundCloud       |      2      |
| Facebook Business SDK |     351     |
|      Vynchronize      |             |
|      Wiki Vnext       |     27      |
|         Uppy          |     122     |
|        SheetJs        |     10      |
|        Meteor         |     128     |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |     637     |
|          Vue          |      5      |
|        JQuery         |      /      |

