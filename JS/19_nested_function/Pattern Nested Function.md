# Pattern: Nested Function

## Category

Functions

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
function F(){
    function D(arg){
        //vulnerability
        res.writeHead(200, {"Content-Type" : "text/html"});
        res.write(arg);
        res.end(); 
    }
    F.D = D;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
F();
F.D(a);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |  YES     |    YES  |    YES    |  YES       |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree and Babel parser.

```
if (path.isFunctionDeclaration() && path.node.body != undefined) {
	if(path.node.body.body[0] != undefined){
		if(path.node.body.body[0].type === "FunctionDeclaration"){
           ...
		}
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
'unpack' function and avoid the nest
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



