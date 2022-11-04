# Pattern: Arithmetic Operation on Array Index

## Category

Array

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- SOURCESFEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var c = query.name;
array = ['a', 'b', c, 'd'];
index = 3;
index = index -1 ;
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(array[index]);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO   |    NO   |     YES   |   YES      |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule:**

```
if(object.property.name is variable && object is array){
	if(variable is integer){
		STOP: PATTERN FOUND
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

```
```

**Discovery Difficulty Level: HIGH and with OVERAPPROXIMATION** 

- PRECONDITIONS:
   1.
- TRANSFORMATION:
explicity define index number
```
```
### Instance 2

- CATEGORY: S0
- SOURCESFEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var c = query.name;
array = ['a', 'b', c, 'd'];
index = 3;
index = index -1 ;
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(array[index-1]);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |      -    |    -   |     -  |    YES    |   NO     |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule:**

```
if(object.property.name is variable && object is array){
	if(variable is integer){
		STOP: PATTERN FOUND
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

```
```

**Discovery Difficulty Level: HIGH and with OVERAPPROXIMATION** 

- PRECONDITIONS:
   1.
- TRANSFORMATION:
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



