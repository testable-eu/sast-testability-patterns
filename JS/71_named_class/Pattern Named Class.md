# Pattern: Named Class Expression

## Category

Object

## Definition

The reference to current class can be made inside the class body, through the _named class expression_. As consequence, the name is only visible within the scope of the class expression itself.

## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const Foo = class NamedFoo {
	constructor(b) {
		this.x = b;
	}
	printX() {
        res.writeHead(200, {"Content-Type" : "text/html"});
	    // XSS vulnerability
        res.write(this.x); 
        res.end();
	}
  }

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
const bar = new Foo(b);
bar.printX();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |      NO    |    NO   |   NO    |   NO      | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation

Based on Abstract Syntax Tree and Babel parser

```
path.isVariableDeclarator() && path.node.init.type === "ClassExpression"
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
write class not as a variable
```javascript
```
### Instance 2

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const Foo = class NamedFoo {
	constructor(b) {
		this.x = b;
	}
  }

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
const bar = new Foo(b);
bar.printX = function (){
            res.writeHead(200, {"Content-Type" : "text/html"});
            // XSS vulnerability
            res.write(this.x); 
            res.end();
        }
        bar.printX();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |   NO    |   YES    |   NO      | YES        |
Measurements Date: 16 July 2021

- DISCOVERY:



Ideal discovery rule matches with implementation

Based on Abstract Syntax Tree and Babel parser

```
path.isVariableDeclarator() && path.node.init.type === "ClassExpression"
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
```
### Instance 3

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const Foo = class NamedFoo {
	constructor(b) {
		this.x = b;
	}
    printX(){
        this.x = 'safe';
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
const bar = new Foo(b);
bar.printX();
	    bar.printX = function (){
            res.writeHead(200, {"Content-Type" : "text/html"});
            // XSS vulnerability
            res.write(this.x); 
            res.end();
        }
        bar.printX();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     -     |   -    |   YES    |   -      | NO        |
Measurements Date: 16 July 2021

- DISCOVERY:



Ideal discovery rule matches with implementation

Based on Abstract Syntax Tree and Babel parser

```
path.isVariableDeclarator() && path.node.init.type === "ClassExpression"
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
```
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

