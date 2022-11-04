# Pattern: Array Unshift

## Category

Functions

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
const b = query.name;   
let myArray = new Array('1', '2', '3')
//add elements to the head of array
myArray.unshift('4', b) //resulting array ['4', b, '1', '2', '3']

res.writeHead(200, {"Content-Type" : "text/html"});       
for(let i=0; i<myArray.length; i++){
    res.write(myArray[i]);
}
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |   NO       |    NO   |   YES   |    NO     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
```

**Discovery Difficulty Level: **

- PRECONDITIONS:
   1.
- TRANSFORMATION:
rewrite the array assegnation:
myArray = new Array('1', '2', '3')
myArray[4] = myArray[2]
myArray[3] = myArray[1]
myArray[2] = myArray[0]
myArray[1] = b
myArray[0] = '4'

## Popularity (Measurements)

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



