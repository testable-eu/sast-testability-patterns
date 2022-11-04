# Pattern: Call

## Category

Function

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
var person = {
    fullName: function(val) {
      return this.firstName + " " + this.lastName + "," + val;
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;   

var person1 = {
    firstName:"John",
	lastName: "Doe"
}
        
res.writeHead(200, {"Content-Type" : "text/html"});       
res.write(person.fullName.call(person1,b));
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |  NO        |    NO   |   YES   |   YES     | YES        |
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
```
```
### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function print(val) {
	return this.firstName + " " + this.lastName + "," + val;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;   

var person1 = {
    firstName:"John",
	lastName: "Doe"
}
        
res.writeHead(200, {"Content-Type" : "text/html"});       
res.write(print.call(person1,b));
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO   |    YES  |    YES    | YES         |
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
call function directly without using call
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

