# Pattern: Inline Function

## Category

Web-API

## Definition

stringify method of JSON produces a string from the object passed as argument.

## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
const func = function(x){ return x};
//vulnerability
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(func(a));
res.end(); 
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |   YES       |    NO   |     YES   | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
if(variableDeclaration && init is FunctionExpression){
	STOP: Pattern Found
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser. 

```
ast.body.forEach(element => {
            let occurences = [];
            traverse(element.value, {
                enter(path) {
                    if (path.isVariableDeclarator() && path.node.init != undefined && path.node.loc != undefined) {
                        if (path.node.init.type === "FunctionExpression") {
                            //PATTERN FOUND
                        }
                    }
                }
            });
            print(element.key, occurences, "INLINE FUNCTION");
        });
```

**Discovery Difficulty Level: LOW **

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
//rewritten const func = function(x){ return message = message + x};
function func(x){
	return x;
}
//vulnerability
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(func(a));
res.end(); 
```

## Popularity (Measurements)

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      /      |
|        PayPal         |      1      |
|      SoundCloud       |     55      |
| Facebook Business SDK |      1      |
|      Vynchronize      |     38      |
|      Wiki Vnext       |      2      |
|         Uppy          |     25      |
|        SheetJs        |     965     |
|        Meteor         |    1795     |
|        Express        |      4      |
|          Pug          |      2      |
|         Ember         |      2      |
|          Vue          |     26      |
|        JQuery         |     325     |



