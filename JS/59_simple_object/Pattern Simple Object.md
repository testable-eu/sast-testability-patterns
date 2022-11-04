# Pattern: Simple Object

## Category

Object

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class Test{
    constructor(foo){
        this.foo = foo;
    }

    getFoo(){
        return this.foo;
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
test = new Test(b);
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(test.getFoo());
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |    NO   |    NO   |   YES     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if(variable is new from class){
	STOP: PATTERN FOUND
}
for(every imported files){
	if(variable new from class in external file){ //imported elements can have a different name
		STOP: PATTERN FOUND
	}
}
```

**Implementation**:

Based on Abstract Syntax Tree and Babel parser. 

Data Structure used is the following:

```
Global_AST: { type: ‘Program’, 
			  body: asts --------- > { key: file_name, 
			  						   value: AST, 
			  						   functions_set: functions --------- > { key: function_name, 
			  						   										  value: entry_point_node_ast }, 										classes_set: functions --------- > { key: class_name, 
			  						   										value: entry_point_node_ast },				   						   external: [imported_files]
```

It requires two AST traversal, one to construct a set of all classes declarations (performed over all the files of the project) in order to create the data structure depicted above:

```
if(path.isClassDeclaration()){
	//class_set is a Map associate to ast.
	class_set.set(path.node.id.name, path);
}
```

And another one for figure out the simple object pattern. Not every occurrence could be found because of aliases on imported objects.

```
if (path.isNewExpression()) {
    ast.body.forEach(e => {
		if (e.classes.has(path.node.callee.name)) {
        	...
		}
	});  
}
```

**Discovery Difficulty Level: HIGH with OVERAPPROXIMATION**

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
function Test(foo){
    this.foo = foo;
}
//necessary in case there are other functions with same name.
Test.prototype.getFoo = function getFoo(){
    return this.foo;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
        
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(Test(b));
res.end();
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      2      |
|        PayPal         |      /      |
|      SoundCloud       |      8      |
| Facebook Business SDK |      6      |
|      Vynchronize      |      /      |
|      Wiki Vnext       |      3      |
|         Uppy          |     111     |
|        SheetJs        |      5      |
|        Meteor         |     142     |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |     42      |
|          Vue          |      1      |
|        JQuery         |      /      |

