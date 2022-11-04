# Pattern: Reference Argument

## Category

Object

## Definition

In JS to pass by reference a variable to a function, the variable has to be an object or an array. This pattern simply assign the query.name to another variable (an object) through a function. 

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

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |    |    NO      |  YES     |   NO    |   NO      |  YES        |
Measurements Date: 21 July 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
if(variable is class object){
	if(property assigned through function){
		STOP: PATTERN FOUND
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree

```
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
as pattern 74
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



