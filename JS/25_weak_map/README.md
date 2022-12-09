# Pattern: Weak Map

## Category

Function

## Definition

A [WeakMap](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap) is a collection of key-value pairs in which keys are weakly referenced (i.e., they can be garbage collected). Keys must be JS objects while values can be of any [arbitrary type](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures), including maps themselves. 

A `WeakMap` doesn't allow enumeration over its keys due to garbage collection. In general, usage of `WeakMap` constructs in a program may break the data flow analysis in SAST tools, as key-value pairs can be dynamically assigned and overwritten. 

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url); // source
const query  = querystring.parse(parsed.query);
const b = query.name; 
const wm1 = new WeakMap();
const wm2 = new WeakMap();

const obj1 = {},
      obj2 = function(){};

wm2.set(obj1, b);
wm1.set(obj2, 'foo');  
wm2.set(wm1, wm2); // keys and values can be any objects, also WeakMaps

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(wm2.get(wm1).get(obj1)); // sink
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO   |    YES  |     YES   | YES        |
Measurements Date: 20 May 2021


### Instance 2

- CATEGORY: D2
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url); // source
const query  = querystring.parse(parsed.query);
const b = query.name; 
const wm1 = new WeakMap();
const wm2 = new WeakMap();

const obj1 = {},
      obj2 = function(){};

wm2.set(obj1, b);
wm2.set(obj2, 'foo');
wm1.set(obj2, 'foo');  
wm2.set(wm1, wm2);//keys and values can be any objects, also WeakMaps

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(wm2.get(wm1).get(obj2)); // sink
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    -      |    -   |    YES  |    YES    | NO         |
Measurements Date: 20 May 2021







