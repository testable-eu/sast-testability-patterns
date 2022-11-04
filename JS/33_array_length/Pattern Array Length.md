# Pattern: Array Length

## Category

Function

## Definition

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
var array = ['first', 'second', b];
array.length = 2; //reduces the length of array from three to two elements
res.writeHead(200, {"Content-Type" : "text/html"});
for(let i = 0; i<array.length; i++){
	res.write(array[i]);
}
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |   -       |    -   |    YES  |   YES     | NO     |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule:**

```
if(variable is type of array){
	if(variable.length is modified){
		PATTERN FOUND
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

```
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
rewrite array.length with the new value assigned
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
var array = [b, 'first', 'second'];
array.length = 2; //reduces the length of array from three to two elements
res.writeHead(200, {"Content-Type" : "text/html"});
for(let i = 0; i<array.length; i++){
	res.write(array[i]);
}
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |    NO   |   YES   |    YES    | YES     |
Measurements Date: 21 July 2021

- DISCOVERY:



**Ideal discovery rule:**

```
if(variable is type of array){
	if(variable.length is modified){
		PATTERN FOUND
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

```
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



