# Pattern: Functions in Object

## Category

Object

## Definition

## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function f1(arg){
    
    utils = {
        f2: function(arg1){
            this.f3(arg1);
        },
        f3: function(arg2){
            //vulnerability
            res.writeHead(200, {"Content-Type" : "text/html"});
            res.write(arg2);
            res.end(); 
        }
    }
    this.utils.f2(arg);
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
f1(a);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |   NO       |    NO    |   NO    |    YES    | YES        |
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
```js
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
//transformation number 1: copy of function f1 here:
var utils = {
    f2: function(arg1){
        //transformation number 2: copy of function f3 here
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(arg1);
        res.end(); 
    },
    f3: function(arg2){
        //vulnerability
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(arg2);
        res.end(); 
    }
}
//transformation number 3: copy of function f2 here
//utils.f2(a);
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(a);
res.end(); 
```

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







