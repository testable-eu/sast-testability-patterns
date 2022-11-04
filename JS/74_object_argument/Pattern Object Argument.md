# Pattern: Object Argument

## Category

Object

## Definition

Changing of object variable.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class myClass{} //JS does not have generics

function f(obj, b){
	obj.prop = b;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
obj1 = new myClass();
obj1.prop = 'abc';
b = query.name;
f(obj1, b);
// XSS
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(obj1.prop);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |     NO     |   YES    | YES     | NO        | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule:**

```
if(variable is object)
	if(object property is assigned){
		STOP: PATTERN FOUND //assignment could be also performed inside functions
    }
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser

```
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
rewrite assignment in main body instead of calling function
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

