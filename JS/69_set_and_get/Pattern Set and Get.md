# Pattern: Set and Get

## Category

Object

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- SOURCESFEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class PropertyTest{
	variable = 'safe';

	set val(value){
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(value);
        res.end();
	}
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
b = query.name;
var obj = new PropertyTest;
obj.val = b;
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |      NO    |   YES       |    YES  |   YES     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with Implementatio.

Based on Abstract Syntax Tree

```
if(path.isClassMethod && (path.node.kind === "set" || path.node.kind === "get"))
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
explicity call set and get method
```
```
### Instance 2

- CATEGORY: S0
- SOURCESFEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class PropertyTest{
	variable = 'safe';

	set val(value){
		this.variable = value;
	}

	get val(){
		return this.variable;
	}
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
b = query.name;
var obj = new PropertyTest;
obj.val = b;
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(obj.val);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |    NO   |   YES   |   YES     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with Implementatio.

Based on Abstract Syntax Tree

```
if(path.isClassMethod && (path.node.kind === "set" || path.node.kind === "get"))
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
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

