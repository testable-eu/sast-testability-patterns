# Pattern: toString

## Category

Object

## Definition

Override of the method _toString_.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class TestClass{
	foo;
	constructor(val){
		this.foo = val;
	}
}

// toString override added to prototype of Foo class
TestClass.prototype.toString = function() {
  return this.foo;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
b = query.name;
var f = new TestClass(b);
res.writeHead(404, {"Content-Type": "text/html"});
res.write(f.toString());
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |      NO    |    NO   |     YES |        NO | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

**Implementation:**

Based on Abstract Syntax Tree and Babel parser

```
if (path.isMemberExpression() && path.node.object != undefined && path.node.property != undefined) {
	if(path.node.property.type === "Identifier" && path.node.object.type === "MemberExpression"){
		let inner = path.node.object;
		if(inner.property != undefined){
			if(inner.property.name === "prototype" && path.node.property.name === "toString"){
				//pattern found
			}
		}
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
instead of override toString, define new function to call insted of toString
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      \      |
|        PayPal         |      \      |
|      SoundCloud       |     12      |
| Facebook Business SDK |      \      |
|      Vynchronize      |      \      |
|      Wiki Vnext       |      \      |
|         Uppy          |      \      |
|        SheetJs        |      \      |
|        Meteor         |      \      |
|        Express        |      \      |
|          Pug          |      \      |
|         Ember         |      \      |
|          Vue          |      \      |
|        JQuery         |      \      |



