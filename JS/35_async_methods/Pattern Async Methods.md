# Pattern: Async Methods

## Category

Functions

## Definition

## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function resolveAfter1Seconds(val) {
    return new Promise(resolve => {
      setTimeout(() => {
        resolve(val);
      }, 1000);
    });
}
  
async function asyncCall(val) {
    var result = await resolveAfter1Seconds(val);
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(result);     
    res.end();
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
asyncCall(query.name);
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |       NO   |    NO   |   NO    |    NO     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a FunctionDeclaration with async set to true.

```
path.isFunctionDeclaration && path.node.async === true   
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
rewrite it in synchronous way calling directly the function associated

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     60      |
|        PayPal         |      3      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      /      |
|      Vynchronize      |      /      |
|      Wiki Vnext       |      /      |
|         Uppy          |     22      |
|        SheetJs        |      8      |
|        Meteor         |     12      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |      1      |
|          Vue          |      /      |
|        JQuery         |      1      |

