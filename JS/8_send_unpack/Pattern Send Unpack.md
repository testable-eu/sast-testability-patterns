# Pattern: Send Unpack

## Category

Functions

## Definition

Function _add_ takes two parameters given by the vector a, which is composed by number 1 and element retrieved by an HTML form. This can cause XSS.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
// a = 'a', b = b the inputs 
function add(a,b){
    // XSS vulnerability
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(a);
    res.write(b); 
    res.end();
}

 const parsed = route.parse(req.url);
 const query  = querystring.parse(parsed.query);
 var b = query.name;
 var a = ['a', b];
 add(...a);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |    NO      |    NO   | YES     | YES | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches the implementation.

Based on Abstract Syntax Tree and Babel parser.

To figure out the pattern, a node has to be CallExpression and the type of arguments SpreadElement.

```
if(path.isCallExpression() && path.node.arguments[0] != undefined){
	if(path.node.arguments[0].type === 'SpreadElement'){
		...
	}
}
```

**Discovery Difficulty Level: EASY**

- PRECONDITIONS:
   1.
- TRANSFORMATION:
call function explicity: add(a,b)
```
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     104     |
|        PayPal         |      1      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      /      |
|      Vynchronize      |      /      |
|      Wiki Vnext       |      /      |
|         Uppy          |     12      |
|        SheetJs        |      /      |
|        Meteor         |     50      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |     342     |
|          Vue          |      2      |
|        JQuery         |      1      |



