# Pattern: Continue

## Category

Built-In Function

## Definition

In JavaScript there is no _goto_ statement, but there is _continue_ for loops.

## Instances

### Instance 1

- CATEGORY: S0
- SOURCESFEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = 'abcde';
var cond = 1;
res.writeHead(200, {"Content-Type" : "text/html"});

loop1: 
for(let i = 0; i<2; i++){
	res.write(b); 
	b = query.name;
	if(cond == 1){
		cond = 0;
		continue loop1;
	}
}        
        
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |   NO       |  YES        |  YES    |   YES     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a ContinueStatement.

```
node.isContinueStatement()
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
rewrite as another loop
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     43      |
|        PayPal         |     10      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      /      |
|      Vynchronize      |      1      |
|      Wiki Vnext       |     14      |
|         Uppy          |      4      |
|        SheetJs        |    1206     |
|        Meteor         |     92      |
|        Express        |      5      |
|          Pug          |      6      |
|         Ember         |      7      |
|          Vue          |     39      |
|        JQuery         |     14      |

