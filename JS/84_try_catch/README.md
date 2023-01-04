# Pattern: Try Catch

## Category

Statements

## Definition

When programs use `try-catch` statements, it can be non-trivial for SAST tools to determine when and which functions in the `try` block may throw an exception, i.e., it is challenging to determine whether there is a real execution of the program in which the `catch` block will be executed. 

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url); // source
const query  = querystring.parse(parsed.query);
var b_to_func = query.name;
	    
try{
    inverse(5, b_to_func);
    inverse(0, b_to_func);
}catch(err){
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(b_to_func); // sink
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

Based on Abstract Syntax Tree and Babel parser:

```
path.isTryStatement() && path.node.handler.type === "CatchClause" && path.node.finalizer == undefined
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

Based on Abstract Syntax Tree and Babel parser:

```
path.isTryStatement() && path.node.handler.type === "CatchClause" && path.node.finalizer == undefined
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

Based on Abstract Syntax Tree and Babel parser:

```
path.isTryStatement() && path.node.handler.type === "CatchClause" && path.node.finalizer == undefined
```


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

