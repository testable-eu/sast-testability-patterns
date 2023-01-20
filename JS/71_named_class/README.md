# Pattern: Named Class Expression

## Category

Object

## Definition

With class expressions in JavaScript, developers can use class name internally, but not outside of the class. In other words, the reference to current class can be made inside the class body, through the _named class expression_. As a consequence, the name is only visible within the scope of the class expression itself.

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
        // OR can use the class name internally, e.g., 
        // NamedFoo.x = b

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
// Cannot use the class name outside of the class scope, e.g.,
// `new NamedFoo(b)` throws "Uncaught ReferenceError: NamedFoo is not defined"
const bar = new Foo(b); 
bar.printX();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |      NO    |    NO   |   NO    |   NO      | YES        |
Measurements Date: 20 May 2021

- TRANSFORMATION:
Write class not as a variable

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

- TRANSFORMATION:
Write class not as a variable

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

- TRANSFORMATION:
Write class not as a variable

