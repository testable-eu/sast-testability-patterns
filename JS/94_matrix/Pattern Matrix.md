# Pattern: Matrix

## Category

Array

## Definition

Creation and assignment to a simple bi-dimensional array

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

//creation of a 3x3 matrix
let a = new Array(3);
for (let i = 0; i<3; i++){
    a[i]=new Array(3);
}

a[0][0]=b;

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(a[0][0]);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |      NO    |    YES      |    YES  |    YES    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:

**PRIORITY DISCOVERY LEVEL: **

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
split it into two arrays
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
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name; 

let a = new Array(3);
for (let i = 0; i<3; i++){
    a[i]=new Array(3);
    a[i][1] = b;
}

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(a[0][1]);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |   NO       |    NO   |   YES   |    YES    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:

**PRIORITY DISCOVERY LEVEL: **

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
### Instance 3

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name; 

//creation of a 3x3 matrix
let a = new Array(3);
for (let i = 0; i<3; i++){
    a[i]=new Array(3);
    a[i][0]=b;
}

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(a[0][1]);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |   - |   -       |    -   |    NO   |  YES      | NO         |
Measurements Date: 20 May 2021

- DISCOVERY:

**PRIORITY DISCOVERY LEVEL: **

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





