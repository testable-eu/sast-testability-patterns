# Pattern: ForEach in Nested Functions

## Category

Functions

## Definition

forEach can be used over a callback function, but it has to be changed in a loop with that function body if it is in a too deep level of functions nested.

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
            var arr = ['1', a3];
            res.writeHead(200, {"Content-Type" : "text/html"});
            arr.forEach(E);
            function E(a4){
                print(a4);
            }
            res.end(); 
        }
    }
}

function print(arg){
    //vulnerability
    res.write(arg);
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
F(a);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    YES   |    NO   |    NO     | YES        |
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
F(a);

function F(a1){
    var arr = ['1', a1];
    res.writeHead(200, {"Content-Type" : "text/html"});
    for(let i = 0; i<arr.length; i++){ //it could be also a while loop
        res.write(arr[i]);
    }
    res.end(); 
}
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

























