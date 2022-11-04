# Pattern: Finite

## Category

Function

## Definition

Function isFinite() determines whether the passed value is a finite number. If  needed, the parameter is first converted to a number. It returns a boolean value

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function div(x) {
    if (isFinite(1000 / x)) {
        return 'Number ' + x + ' is NOT Infinity.';
    }
    return 'Number ' + x + ' is Infinity!';
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
let b = query.name;

res.writeHead(200, {"Content-Type" : "text/html"});
//XSS
res.write(div(b));
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |   NO       |    YES      |    YES  |    YES    | YES        |
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
check +infinity -infinity and nan in if

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

