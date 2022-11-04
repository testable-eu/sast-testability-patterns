# Pattern: Object Literals

## Category

Dictionary

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
var p = 'safe';

function types(val){
    if (val == 'safe'){
        return val;
    }else{
        return val + ' not present';
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
res.writeHead(200, {"Content-Type" : "text/html"});
var b = query.name;
var values = {first: 'first', second: types(b), third: p};       
res.write(values.first);
res.write(values.second);
res.write(values.third);     
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |    NO   |    YES  |  YES      |   YES      |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree

```
if (path.isObjectExpression() && path.node.properties != undefined){
	if(path.node.properties[0].type === "ObjectProperty" && path.node.properties[0].key != undefined){
		if(path.node.properties[0].key.type === "Identifier"){
			//PATTERN FOUND
		}
	}
}
```




- PRECONDITIONS:
   1.
- TRANSFORMATION:
rewrite keys with values: res.write('first') instead of res.write(values.first)
```
```
### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
var p = 'safe';

function types(val){
    if (val == 'safe'){
        return val;
    }else{
        return val + ' not present';
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query); 
res.writeHead(200, {"Content-Type" : "text/html"});
var b = query.name;
var values = {first: 'first', second: {a: 'a', 'b': types(b)}, third: p};       res.write(values.first);
res.write(values.second.a);
res.write(values.second['b']);
res.write(values.third);     
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |   YES       |   YES   |  YES      |   YES      |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree

```
if (path.isObjectExpression() && path.node.properties != undefined){
	if(path.node.properties[0].type === "ObjectProperty" && path.node.properties[0].key != undefined){
		if(path.node.properties[0].key.type === "Identifier"){
			//PATTERN FOUND
		}
	}
}
```




- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```
### Instance 3

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query); 
res.writeHead(200, {"Content-Type" : "text/html"});
var b = query.name;
var values = {first: 'first', second: b};       
var values2 = {first2: values.first, second: values};
var values3 = {first3: 'first3', body: values2};
res.write(values3.body.second.second);   
res.end();
​```d();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  | NO         |  YES     |     NO  |    YES    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree

```
if (path.isObjectExpression() && path.node.properties != undefined){
	if(path.node.properties[0].type === "ObjectProperty" && path.node.properties[0].key != undefined){
		if(path.node.properties[0].key.type === "Identifier"){
			//PATTERN FOUND
		}
	}
}
```




- PRECONDITIONS:
   1.
- TRANSFORMATION:

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |             |
|        PayPal         |             |
|      SoundCloud       |     775     |
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



