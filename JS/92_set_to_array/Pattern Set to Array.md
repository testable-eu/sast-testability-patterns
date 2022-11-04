# Pattern: Set to Array

## Category

Array

## Definition

A Set object can be cast to array through spread operator (...) or thanks to _Array.from_. In array, multiple equal elements are deleted.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
var set = new Set();
set.add('first');
set.add('second');
set.add(b);
set.add(b);
array = [...set];
array.pop(); //remove last element (b)
        
res.writeHead(200, {"Content-Type" : "text/html"});
var i = 0;
while(array[i]!=undefined){
    res.write(array[i])
	i = i +1;
}
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO  |     NO     |    NO   |   NO    |    YES    |  NO      |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule:**

```
if(source variable is type of set){
	if(method array.from or spread element){
		PATTERN FOUND
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser

```
```

**Discovery Difficulty Level: HIGH with OVERAPPROXIMATION**

- PRECONDITIONS:
   1.
- TRANSFORMATION:
array[n]=set[n]
```javascript
```
### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
var set = new Set();
set.add('first');
set.add('second');
set.add(b);
set.add(b);
array = [...set];
        
res.writeHead(200, {"Content-Type" : "text/html"});
var i = 0;
while(array[i]!=undefined){
    res.write(array[i])
	i = i +1;
}
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO  |       NO   |     NO  |   NO    |    YES    |  YES      |
Measurements Date: 21 July 2021

- DISCOVERY:



**Ideal discovery rule:**

```
if(source variable is type of set){
	if(method array.from or spread element){
		PATTERN FOUND
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser

```
```

**Discovery Difficulty Level: HIGH with OVERAPPROXIMATION**

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

