# Pattern: Symbol ToStringTag

## Category

Object

## Definition

The `Symbol.toStringTag` is a string valued property used in the creation of the default string description of an object. It is accessed internally by the `Object.prototype.toString()` method. SAST tools may not model or support the semantics of this API. 

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
const query  = querystring.parse(parsed.query); // source
const b = query.name;   

res.writeHead(200, {"Content-Type" : "text/html"});
// XSS vulnerability
res.write(Object.prototype.toString.call(new MyClass(b))); // sink
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |      NO    |    NO   |   YES   |    NO     | YES        |
Measurements Date: 20 May 2021


- TRANSFORMATION:
Rewrite it as simple method or ask to developer intervention



