# Pattern: Delete Properties

## Category

Object

## Definition

The [delete](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/delete) operator removes a property from an object. If the property's value is an object and there are no more references to the object, the object held by that property is eventually released automatically.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
class myObject{
    constructor(val){
        this.property = val;
    }

    out(){
        res.write('property ' + this.property);
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
var obj = new myObject(b);
delete obj.property;
res.writeHead(200, {"Content-Type" : "text/html"});
obj.out();
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     -     |    -   |    -   |     YES   |  NO      |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be an UnaryExpression with operator delete.

```
path.isUnaryExpression && path.node.operator === "delete"
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
```
### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class myObject{
    constructor(val){
        this.property = val;
        this.property2 = this.property
    }

    out(){
        res.write('property ' + this.property2);
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
var obj = new myObject(b);
delete obj.property;
res.writeHead(200, {"Content-Type" : "text/html"});
obj.out();
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO  |    NO      |  NO     |    NO   |    YES    |  YES      |
Measurements Date: 21 July 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be an UnaryExpression with operator delete.

```
path.isUnaryExpression && path.node.operator === "delete"
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
set property to null
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      \      |
|        PayPal         |      \      |
|      SoundCloud       |      \      |
| Facebook Business SDK |      \      |
|      Vynchronize      |     16      |
|      Wiki Vnext       |      8      |
|         Uppy          |     37      |
|        SheetJs        |      \      |
|        Meteor         |      \      |
|        Express        |      \      |
|          Pug          |      2      |
|         Ember         |      \      |
|          Vue          |      \      |
|        JQuery         |      \      |



