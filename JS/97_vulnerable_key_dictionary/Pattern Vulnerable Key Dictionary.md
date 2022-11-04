# Pattern: Vulnerable Key Dictionary

## Category

Dictionary

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
res.writeHead(200, {"Content-Type" : "text/html"});
var a = query.name;
var dictionary = {
	foo: 'foo',
	'doo': 'doo',
    10: 100,
};
dictionary[a]=10;

for(var i in dictionary){
	//XSS
    res.write(i.toString());
}
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |     NO     |    NO   |     NO  |     NO    |  YES      |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
```

**Implementation:**

Based on Abstract Syntax Tree

```
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
rewrite keys with values: res.write('first') instead of res.write(values.first)
```javascript
```

### Instance 2

- CATEGORY: D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
res.writeHead(200, {"Content-Type" : "text/html"});
var a = query.name;
var b = query.func;
var dictionary = {
	foo: 'foo',
	'doo': 'doo',
    10: 100,
};
dictionary[a]=b;

res.write(dictionary[a]);
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |     NO     |    NO   |    NO   |   NO      |  YES      |
Measurements Date: 23 july 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
```

**Implementation:**

Based on Abstract Syntax Tree

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



