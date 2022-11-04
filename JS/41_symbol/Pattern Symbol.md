# Pattern: Symbol

## Category

built-in function

## Definition

The method Symbol.for(tokenString) returns a symbol value from the registry, and Symbol.keyFor(symbolValue) returns a token string from the registry.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function create(val){
    var sym = Symbol.for(val);  
    return sym 
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;   

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(Symbol.keyFor(create(b)));
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |     NO     |    NO   |   YES   |   YES     | YES        |
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
it could be rewritten as dictionary

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

