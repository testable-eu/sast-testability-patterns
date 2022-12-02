# Pattern: Unset Element from Array

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
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var c = query.name;
array = ['a', 'b', c, 'd'];
array.splice(2, 1);
res.writeHead(200, {"Content-Type" : "text/html"});
array.forEach(element => {
	res.write(element);
});
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |      -    |    -   |     YES |       YES |  NO      |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree

```
if (path.isCallExpression() && path.node.callee != undefined) {
	if (path.node.callee.type == 'MemberExpression') {
		if (path.node.callee.property.name === "splice") {
			...
		}
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
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
const query  = querystring.parse(parsed.query); // source
var c = query.name;
array = ['a', 'b', c, 'd'];
array.splice(3, 1); // tarpit
res.writeHead(200, {"Content-Type" : "text/html"});
array.forEach(element => {
	res.write(element); // sink
});
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES   |    NO      |    NO   |  YES    |  YES      |  YES      |
Measurements Date: 21 July 2021

- DISCOVERY:


Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree

```
if (path.isCallExpression() && path.node.callee != undefined) {
	if (path.node.callee.type == 'MemberExpression') {
		if (path.node.callee.property.name === "splice") {
			...
		}
	}
}
```


- TRANSFORMATION:
Use the array index operator to retrieve the list element instead of using the `splice` function (e.g., x = arr[idx])
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      3      |
|        PayPal         |      /      |
|      SoundCloud       |     30      |
| Facebook Business SDK |      /      |
|      Vynchronize      |     20      |
|      Wiki Vnext       |      2      |
|         Uppy          |     10      |
|        SheetJs        |     40      |
|        Meteor         |     87      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |     33      |
|          Vue          |     139     |
|        JQuery         |     24      |





