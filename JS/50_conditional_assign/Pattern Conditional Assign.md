# Pattern: Conditional Assign

## Category

Variables

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
//it takes element from a form 
const parsed = route.parse(req.url)
const query  = querystring.parse(parsed.query)
res.writeHead(200, {"Content-Type" : "text/html"});
var a = query.name;
var x = 5;
x > 9? b = "safe" : b = a;
//XSS vulnerability
res.write(b);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |   NO       |  YES        |    YES  |   YES     |  YES       |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a ConditionalExpression.

```
node.isConditionalExpression()
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
res.writeHead(200, {"Content-Type" : "text/html"});
var a = query.name;
var x = 5;
if(x>9){
  b = "safe";
}else{
  b = a;
}
res.write(b);
res.end();
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     422     |
|        PayPal         |     191     |
|      SoundCloud       |     11      |
| Facebook Business SDK |      6      |
|      Vynchronize      |     546     |
|      Wiki Vnext       |     120     |
|         Uppy          |     256     |
|        SheetJs        |    6388     |
|        Meteor         |    1253     |
|        Express        |     51      |
|          Pug          |     36      |
|         Ember         |     103     |
|          Vue          |     453     |
|        JQuery         |     559     |



