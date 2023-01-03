# Pattern: Reference Argument

## Category

Object

## Definition


If variables are passed by referenced to a function, and their properties are changed within the function scope, SAST tools may not be able to capture the change of the property as it happens in a different context. In JavaScript, to pass by reference a variable to a function, the variable has to be an object or an array.


## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class myClass {
	constructor(){
		var a = '';
	}
}

function foo(objA, objB){
    objA.a = objB;
} 

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
a = new myClass();
foo(a, b);
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(a.a);
res.end();
```

This pattern simply assign the attacker-controlled source to another variable through a function call, which in turn reaches an XSS sink. 


- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |    |    NO      |  YES     |   NO    |   NO      |  YES        |
Measurements Date: 21 July 2021




