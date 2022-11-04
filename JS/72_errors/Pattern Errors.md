# Pattern: Errors

## Category

Object

## Definition

Error is the parent object, all the others are inherited. Noticeable, all Errors that inherits from Error object, "reflect" also the outcomes given by the arsenal toolset.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function F(val){
    throw new Error(val);
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
let b = query.name;
try{
    F(b);
}catch(err){
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(err.message);
    res.end();
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO    | YES     | NO        | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```

```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```

```



- PRECONDITIONS:
  1.
- TRANSFORMATION:

```js

```

### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function F(val){
    throw new URIError(val);
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
let b = query.name;
try{
    F(b);
}catch(err){
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(err.message);
    res.end();
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO    | YES     | NO        | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```

```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```

```



- PRECONDITIONS:
  1.
- TRANSFORMATION:

```js

```

### Instance 3

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function F(val){
    throw new TypeError(val);
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
let b = query.name;
try{
    F(b);
}catch(err){
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(err.message);
    res.end();
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO    | YES     | NO        | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```

```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```

```



- PRECONDITIONS:
  1.
- TRANSFORMATION:

```
```

### Instance 4

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function F(val){
    throw new SyntaxError(val);
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
let b = query.name;
try{
    F(b);
}catch(err){
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(err.message);
    res.end();
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO    | YES     | NO        | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```

```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```

```



- PRECONDITIONS:
  1.
- TRANSFORMATION:

```

```

### Instance 5

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function F(val){
    throw new ReferenceError(val);
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
let b = query.name;
try{
    F(b);
}catch(err){
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(err.message);
    res.end();
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO    | YES     | NO        | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```

```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```

```



- PRECONDITIONS:
  1.
- TRANSFORMATION:

```
```

### Instance 6

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function F(val){
    if(["apple", "banana", "carrot"].includes(value) === false)
    {
        throw new RangeError(val);
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
let b = query.name;
try{
    F(b);
}catch(err){
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(err.message);
    res.end();
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO    | YES     | NO        | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```

```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```

```



- PRECONDITIONS:
  1.
- TRANSFORMATION:

```

```

### Instance 7

EvalError is not used in the current ECMAScript specification and will thus not be thrown by the runtime. However, the object itself remains for backwards compatibility with earlier versions of the specification.

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function F(val){
    throw new EvalError(val);
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
let b = query.name;
try{
    F(b);
}catch(err){
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(err.message);
    res.end();
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO    | YES     | NO        | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```

```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```

```



- PRECONDITIONS:
  1.
- TRANSFORMATION:
developer intervention
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

































































































































