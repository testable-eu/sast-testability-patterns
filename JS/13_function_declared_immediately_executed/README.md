# Pattern: Function Declared and Immediately Executed

## Category

Functions

## Definition

Function call argument to parameter binding could be challenging for SAST tools when handling anonymous function calls (i.e., invoking anonymous functions immediately after they are declared) for data flow / taint analysis. 

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url); // source
const query  = querystring.parse(parsed.query);
var a = query.name;
(function(val, out) {
    out.writeHead(200, {"Content-Type" : "text/html"});
    out.write(val); // sink  
    out.end(); 
}(a, res)); // tarpit
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |     NO     |    NO    |     NO  |    NO     | YES        |
Measurements Date: 20 May 2021

- TRANSFORMATION:
```js
function f(val, out) {
    out.writeHead(200, {"Content-Type" : "text/html"});
    out.write(val);  
    out.end(); 
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
f(a, res);
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



