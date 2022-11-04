# Pattern: Arguments

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
function f(){
    return arguments[0];
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
        
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(f(a));  
res.end(); 
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |    NO    | YES     |    NO     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:

**PRIORITY DISCOVERY LEVEL: **

Ideal discovery rule:

```javascript
if(arguments){
    //PATTERN FOUND
}
```

Based on Abstract Syntax Tree and Babel parser.

```
```

**Discovery Difficulty Level: **

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```js
function f(val){
    return val;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
        
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(f(a));  
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







