# Pattern: Global Variable

## Category

Variables

## Definition

The function _F_ change the value of the global variable _result_ by putting inside the value of the html form.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
var result="I'm global";

function F(word) {
    // will change the value of $result
    result = word;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var words = query.name;
F(words);
// XSS vulnerability, will print word
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(result);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |  YES     | NO | YES | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
search for every variable of type 'var' declared in main program body (not in functions scope)
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```
if(path.type === "Program" && path.node.body !== undefined){
	let body = path.node.body;
	for(i in body){
		if(body[i].declarations !== undefined && body[i].kind === "var"){
			for (j in body[i].declarations){
				if(body[i].declarations[j].type === "VariableDeclarator"){
					// pattern found at line body[i].declarations[j].loc.start.line	
				}
			}
		}	
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
To transform this pattern has been explicitly indicated the return of the global variable, thus underling the link between the variable controlled by the user (query.name) and the global one
```js
var result="I'm global";

function F(word) {
    // will change the value of $result
    result = word;
    return result;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var words = query.name;
var result$2 = F(words);
// XSS vulnerability, will print word
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(result$2); //to convert from object/json to string
res.end();
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     11      |
|        PayPal         |      /      |
|      SoundCloud       |     23      |
| Facebook Business SDK |     11      |
|      Vynchronize      |     22      |
|      Wiki Vnext       |      2      |
|         Uppy          |     51      |
|        SheetJs        |     659     |
|        Meteor         |    1255     |
|        Express        |     440     |
|          Pug          |     165     |
|         Ember         |      /      |
|          Vue          |    1598     |
|        JQuery         |     49      |

