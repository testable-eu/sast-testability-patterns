# Pattern: Generators

## Category

Functions

## Definition

Generator functions allow to define an iterative algorithm by writing a single function which is not continuous. Therefore, once these functions are called, they do not initially execute their code, but return a **generator** which is an iterator ({ value: nextIndex, done: false }). The generator function executes until it reaches the _yield_ keyword. Yield values are computed by generator on demand (this increase efficiency).

## Instances

### Instance 1

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function *gen_one_to_three(b) {
    for(i = 1; i <= 3; i++){
		yield b
	}
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b_to_func = query.name;
res.writeHead(200, {"Content-Type" : "text/html"});
for (let n of gen_one_to_three(b_to_func)) {
	// XSS vulnerability
	res.write(n); 
}	
res.end();	
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |     NO     |    NO   | YES     | NO        | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches implementation

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a FunctionDeclaration and the generator attribute has to be set on true.

```
node.isFunctionDeclaration() && node.generator === true
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```
### Instance 2

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function *gen_one_to_three(b) {
	yield b;
	yield 'safe';
	return b;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b_to_func = query.name;
var generator = gen_one_to_three(b_to_func);
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(generator.next().value); 
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |    NO      |    NO   | NO      | YES       | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches implementation

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a FunctionDeclaration and the generator attribute has to be set on true.

```
node.isFunctionDeclaration() && node.generator === true
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```
### Instance 3

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function *gen_one_to_three(b) {
	yield 'safe1';
	yield 'safe2';
	return b;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b_to_func = query.name;
var generator = gen_one_to_three(b_to_func);
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(generator.next().value); 
res.write(generator.next().value); 
res.write(generator.next().value); 
res.end(); 
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |    NO      |    NO    |    YES  | YES       | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches implementation

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a FunctionDeclaration and the generator attribute has to be set on true.

```
node.isFunctionDeclaration() && node.generator === true
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:

### Instance 4

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
function *gen_one_to_three(b) {
	yield 'safe';
	return b;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b_to_func = query.name;
var generator = gen_one_to_three(b_to_func);
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(generator.next().value); 
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | -   |      -    |  -     |  -     |   YES     | NO        |
Measurements Date: 21 July 2021

- DISCOVERY:



Ideal discovery rule matches implementation

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a FunctionDeclaration and the generator attribute has to be set on true.

```
node.isFunctionDeclaration() && node.generator === true
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
return instead of yield and call function in classic way
```
```

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      1      |
|        PayPal         |      /      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      /      |
|      Vynchronize      |      /      |
|      Wiki Vnext       |      /      |
|         Uppy          |      /      |
|        SheetJs        |      /      |
|        Meteor         |      /      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |      /      |
|          Vue          |      /      |
|        JQuery         |      /      |

