# Pattern: Simple Array

## Category

Array

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
var array = ['a', 'b', a, 'c'];
res.writeHead(200, {"Content-Type" : "text/html"});
//XSS vulnerability
res.write(array[2]);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |   NO       |  YES     |    YES  |  YES      |   YES      |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with Implementatio.

Based on Abstract Syntax Tree

```
if(path.isClassMethod && (path.node.kind === "set" || path.node.kind === "get"))
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```
### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
var array = ['a', 'b', a, 'c'];
res.writeHead(200, {"Content-Type" : "text/html"});
//No XSS vulnerability
res.write(array[1]);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |      -    |    NO   |      NO |       YES |   NO     |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
if(variable is array){
	if(address an array element){
		STOP: PATTERN FOUND //indexing could be done also inside a function
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree

```
```

**Discovery Difficulty Level: HIGH + OVERAPPROXIMATION** 

- PRECONDITIONS:
   1.
- TRANSFORMATION:
rewrite it as variable
one = array[0]
two = array[1]
...
```
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



