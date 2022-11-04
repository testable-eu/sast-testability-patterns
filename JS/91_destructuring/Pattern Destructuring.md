# Pattern: Destructuring

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
var second = query.name;
var vect = ['first', second, 'third'];
var [one, two, three] = vect;
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(one);
res.write(two);
res.write(three);
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    YES      |    YES  |   YES     |  YES       |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree and Babel parser.

```
node.isArrayPattern()
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
one = vect[0]
two = vect[1]
...
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     36      |
|        PayPal         |      1      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      /      |
|      Vynchronize      |      /      |
|      Wiki Vnext       |      1      |
|         Uppy          |     16      |
|        SheetJs        |     16      |
|        Meteor         |     32      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |     30      |
|          Vue          |      9      |
|        JQuery         |      1      |





