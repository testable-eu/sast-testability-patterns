# Pattern: Too Function Calls

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
function F(a1){
    D(a1)
    function D(a2){
        C(a2);
        function C(a3){
            E(a3)
            function E(a4){
                print(a4);
            }
        }
    }
}

function print(arg){
    //vulnerability
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(arg);
    res.end(); 
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
F(a);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |   YES    |    NO   |    YES    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:

**PRIORITY DISCOVERY LEVEL: **

Ideal discovery rule:

```javascript

```

Based on Abstract Syntax Tree and Babel parser.

```

```

**Discovery Difficulty Level: **

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```js
function F(a1){
    //vulnerability
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(a1);
    res.end();   
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
F(a);
```
### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function F(a1){
    D(a1)
    
}
function D(a2){
    C(a2);
    
}
function C(a3){
    E(a3)
    
}
function E(a4){
    print(a4);
}

function print(arg){
    //vulnerability
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(arg);
    res.end(); 
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
F(a);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |      NO    |    YES     |    NO   |    YES    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:

**PRIORITY DISCOVERY LEVEL: **

Ideal discovery rule:

```javascript

```

Based on Abstract Syntax Tree and Babel parser.

```

```

**Discovery Difficulty Level: **

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```js
function F(a1){
    //vulnerability
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(a1);
    res.end();   
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
F(a);
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























