# Pattern: Symbol ToStringTag

## Category

Object

## Definition

The Symbol.toStringTag is a string valued property that is used in the creation of the default string description of an object. It is accessed internally by the Object.prototype.toString() method.

## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class MyClass {
    constructor(val){
        this.value = val;
    }
    get [Symbol.toStringTag]() {
      return this.value;
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;   

//XSS
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(Object.prototype.toString.call(new MyClass(b)));
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |      NO    |    NO   |   YES   |    NO     | YES        |
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
rewrite it as simple method or ask to developer intervention

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



