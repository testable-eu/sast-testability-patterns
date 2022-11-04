# Pattern: Promise

## Category

Object

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
function func(name){
    return new Promise(function(resolve, reject){
        try{
            name = name + ''; //do something
        }catch(Error){
            reject(Error);
        }   
        resolve(name);
    });  
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
        
Promise.all([ func(b)]).then((values)=> {
    res.writeHead(200, {"Content-Type" : "text/html"});
    //Reflected XSS
    //values are in array form
    for(let i=0; i<values.length; i++){
    	res.write(values[i]);
    }
    res.end();
});
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO   |    YES  |    YES    |     YES    |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a CallExpression with callee.type MemeberExpression and object Promise or NewExpression with callee.name Promise.

```
if(path.isNewExpression && path.node.callee != undefined){
	if(path.node.callee.name === 'Promise'){
		//pattern found
	}
}
if(path.isCallExpression && path.node.callee != undefined){
	if(path.node.callee.type == 'MemberExpression'){
		let inner_node = path.node.callee;
		if(inner_node.object.name === "Promise"){
			//pattern found
		}
	}			
}  
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
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
async function func(name){
    test(name);
    await Promise.all(promises);
}

async function test(val) {
    res.write(val);
    promises.push(val);
};

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
        
res.writeHead(200, {"Content-Type" : "text/html"});
func(b);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |   NO       |   YES       |    YES  |    YES    |  YES       |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a CallExpression with callee.type MemeberExpression and object Promise or NewExpression with callee.name Promise.

```
if(path.isNewExpression && path.node.callee != undefined){
	if(path.node.callee.name === 'Promise'){
		//pattern found
	}
}
if(path.isCallExpression && path.node.callee != undefined){
	if(path.node.callee.type == 'MemberExpression'){
		let inner_node = path.node.callee;
		if(inner_node.object.name === "Promise"){
			//pattern found
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
function func(name){
    return new Promise((resolve, reject) => {
        if(resolve){
            res.write(name);
        }
    })
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
        
res.writeHead(200, {"Content-Type" : "text/html"});
func(b);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |  NO        |  YES     |    YES  |    YES    |    YES     |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a CallExpression with callee.type MemeberExpression and object Promise or NewExpression with callee.name Promise.

```
if(path.isNewExpression && path.node.callee != undefined){
	if(path.node.callee.name === 'Promise'){
		//pattern found
	}
}
if(path.isCallExpression && path.node.callee != undefined){
	if(path.node.callee.type == 'MemberExpression'){
		let inner_node = path.node.callee;
		if(inner_node.object.name === "Promise"){
			//pattern found
		}
	}			
}  
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```js
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
        
res.writeHead(200, {"Content-Type" : "text/html"});
func(b);
res.end();

function func(name){
    //return new Promise((resolve, reject) => {
    var resolve
        if(resolve){
            res.write(name);
        }
    //})
}
```

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     222     |
|        PayPal         |      4      |
|      SoundCloud       |      7      |
| Facebook Business SDK |     10      |
|      Vynchronize      |      1      |
|      Wiki Vnext       |     31      |
|         Uppy          |     155     |
|        SheetJs        |      8      |
|        Meteor         |     98      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |      6      |
|          Vue          |     56      |
|        JQuery         |     13      |





