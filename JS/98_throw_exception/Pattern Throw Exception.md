# Pattern: Throw Exception

## Category

Exception

## Definition

Function _print_ call _inverse_ which throw exception as parameter passed by HTML form.

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function inverse(x,b) {
    if(!x){
		throw new Error(b);
	}
	return 1/x;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b_to_func = query.name;
try{
	inverse(5, b_to_func);
	inverse(0, b_to_func);
}catch(err){
     //XSS
     res.writeHead(200, {"Content-Type" : "text/html"});
     // XSS vulnerability
     res.write("Exception " + err.message); 
     res.end();
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |    NO   |   NO    |   NO      | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches implementation

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be an ThrowStatement

```
node.isThrowStatement()
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
return message passed as error
```javascript
```
### Instance 2

- CATEGORY: D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
global.inverse = function inverse(x,b) {
    if(x != 0){
		throw new Error(b);
	}
	return x;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b_to_func = query.name;
var to_invert = query.name2.toString().trim();;
	    try{
		    global[to_invert](0, b_to_func);
          global[to_invert](1, b_to_func);
}catch(err){
     //XSS
     res.writeHead(200, {"Content-Type" : "text/html"});
     // XSS vulnerability
     res.write("Exception " + err.message); 
     res.end();
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO  |    NO      |    NO   |   NO    |   NO      | YES        |
Measurements Date: 15 July 2021

- DISCOVERY:



Ideal discovery rule matches implementation

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be an ThrowStatement

```
node.isThrowStatement()
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
```

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     13      |
|        PayPal         |     138     |
|      SoundCloud       |      3      |
| Facebook Business SDK |      8      |
|      Vynchronize      |     23      |
|      Wiki Vnext       |     169     |
|         Uppy          |     110     |
|        SheetJs        |    2408     |
|        Meteor         |     969     |
|        Express        |     69      |
|          Pug          |     62      |
|         Ember         |     121     |
|          Vue          |     48      |
|        JQuery         |     22      |



