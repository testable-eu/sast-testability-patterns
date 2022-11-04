# Pattern: Assign Object

## Category

Object

## Definition

Assignment between two objects. The change on one affect the other.

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



**Ideal Discovery rule:**

```
if(assign object to variable){
	if(variable changes property){
		STOP: PATTERN FOUND //changement could be done inside a function
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree

```
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
explicity assign object also to obj1
```javascript
```
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

