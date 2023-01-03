# Pattern: Assign Object

## Category

Object

## Definition

Assignment between two objects. The change of a property on one affect the other, and SAST tools may fall short of capturing this change. 

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class myClass {
	b = 'safe';
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
obj1 = new myClass();
obj2 = obj1;
obj2.b = query.name;
// XSS
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(obj1.b);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |    NO      |   YES    |    NO   |     NO    | YES      |
Measurements Date: 20 May 2021

- DISCOVERY:

```
if(object assignment to a variable){
	if(property of a variable changes){
		STOP: PATTERN FOUND 
	}
}
```

- TRANSFORMATION:
explicity assign values to object properties. For instance, in the above example, the value should be explicitly assigned to `obj1.b` property.

