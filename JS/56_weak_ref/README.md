# Pattern: Weak Ref

## Category

Object

## Definition

A WeakRef object lets you hold a weak reference to another object, without preventing that object from getting garbage-collected.

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class Counter {
    constructor(element) {
      this.ref = new WeakRef(element);
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
//WeakRef needs an object
let b = [query.name];
let c = new Counter(b); 

res.writeHead(200, {"Content-Type" : "text/html"});
// Get the element from the weak reference, if it still exists
let v = c.ref.deref();
res.write(v[0]);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |  NO        |    NO   |   NO    |    YES    | YES        |
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
developer intervention

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











