# Pattern: Generatorfunction Constructor

## Category

Functions

## Definition

The [function*](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function*?retiredLocale=it) declaration (function keyword followed by an asterisk) defines a generator function, which returns a Generator object.
You can also define generator functions using the GeneratorFunction constructor, or the function expression syntax.
The [GeneratorFunction](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/GeneratorFunction) object provides methods for generator functions. In JavaScript, every generator function is actually a GeneratorFunction object. 
## Instances

### Instance 1

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;   
var GeneratorFunction = Object.getPrototypeOf(function*(){}).constructor
var g = new GeneratorFunction('a', 'yield a');
var iterator = g(b);

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(iterator.next().value);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |    NO      |    NO    |    NO   |   YES     | YES        |
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
write simple function generator (see pattern 30)

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

