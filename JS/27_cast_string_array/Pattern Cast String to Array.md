# Pattern: Cast String to Array

## Category

Functions

## Definition

In JavaScript there is no type casting system, therefore the _(array)variable_ operation that is performed in PHP can not be done in JS.

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
var arr = query.name;
arr = arr instanceof Array ? arr : [arr];
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(arr[0]);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |  NO        |   YES       |    YES  |  YES      |  YES       |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal Discovery rule:**

```
if(variable is String){
	if([variable]){
		STOP: PATTERN FOUND //cast could be done also in functions
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel Parser

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



