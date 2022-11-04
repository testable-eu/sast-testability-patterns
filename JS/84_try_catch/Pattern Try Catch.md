# Pattern: Try Catch

## Category

Statements

## Definition

Function _print_ call _inverse_ which throw exception as parameter passed by HTML form.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b_to_func = query.name;
	    
try{
    inverse(5, b_to_func);
    inverse(0, b_to_func);
}catch(err){
    //XSS
    // XSS vulnerability, will print word
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(b_to_func);
    res.end();
    console.log("Exception " + err.message);
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      | YES         | NO | YES | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
path.isTryStatement() && path.node.handler.type === "CatchClause" && path.node.finalizer == undefined
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```
path.isTryStatement() && path.node.handler.type === "CatchClause" && path.node.finalizer == undefined
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
developer intervention
```
```
### Instance 2

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: YES
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
// to sanitize
function escapeHtml(text) {
	return text
	.replace(/&/g, "&amp;")
	.replace(/</g, "&lt;")
	.replace(/>/g, "&gt;")
	.replace(/"/g, "&quot;")
	.replace(/'/g, "&#039;");
}

function tcf(b) {
	var v = b;
	try{
		throw new Error('Exception');
	}catch(err){
		console.log('catch');
		//before return, finally block is run
		return v;
	}finally{
		console.log('finally');
		//sanitize
		v = escapeHtml(v);
	}
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b_to_func = query.name;
// XSS vulnerability
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(tcf(b_to_func)); 
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |    YES      | NO | YES | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
path.isTryStatement() && path.node.finalizer != undefined
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```
path.isTryStatement() && path.node.finalizer != undefined
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```
### Instance 3

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: YES
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
// to sanitize
function escapeHtml(text) {
	return text
	.replace(/&/g, "&amp;")
	.replace(/</g, "&lt;")
	.replace(/>/g, "&gt;")
	.replace(/"/g, "&quot;")
	.replace(/'/g, "&#039;");
}


function tcf(b) {
	var v = b;
	try{
		throw new Error('Exception');
	}catch(err){
		console.log('catch');
		return v;
	}finally{
		console.log('finally');
		//sanitize
		v = escapeHtml(v);
		return v;
	}
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b_to_func = query.name;
//always sanitize, no XSS vulnerability
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(tcf(b_to_func));
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    -       | YES         | - | YES | NO         |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
path.isTryStatement() && path.node.finalizer != undefined
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

The pattern is found checking for VariableDeclarator of type var outside the scope functions, therefore, every variable in the program body.

```
path.isTryStatement() && path.node.finalizer != undefined
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    |            #Occurences             |
| :-------------------: | :--------------------------------: |
|      Mattermost       |            49 (for 1st)            |
|        PayPal         |            52 (for 1st)            |
|      SoundCloud       |            1 (for 1st)             |
| Facebook Business SDK |                 /                  |
|      Vynchronize      | 2 (for 2nd and 3rd), 15 (for 1st)  |
|      Wiki Vnext       |           182 (for 1st)            |
|         Uppy          |            44 (for 1st)            |
|        SheetJs        |           450 (for 1st)            |
|        Meteor         | 331 (for 1st), 4 for (2nd and 3rd) |
|        Express        |            14 (for 1st)            |
|          Pug          |            29 (for 1st)            |
|         Ember         |            33 (for 1st)            |
|          Vue          | 45 (for 1st), 2 (for 2nd and 3rd)  |
|        JQuery         | 70 (for 1st), 4 (for 2nd and 3rd)  |

