# Pattern: Check Type

## Category

Variables

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
        const query  = querystring.parse(parsed.query);
        var a = query.name;

        if(typeof(a) == "string"){
            //vulnerability
            res.writeHead(200, {"Content-Type" : "text/html"});
            res.write("string " + a);
            res.end();
        }  
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |   NO       |    YES   |    YES  |    YES    |  YES       |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

The node type of AST has to be a UnaryExpression and the operator node attribute has to be typeof.

```
path.isUnaryExpression && path.node.operator === "typeof"
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
developer intervention
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     70      |
|        PayPal         |     73      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      4      |
|      Vynchronize      |     136     |
|      Wiki Vnext       |      6      |
|         Uppy          |     188     |
|        SheetJs        |    2155     |
|        Meteor         |     709     |
|        Express        |     57      |
|          Pug          |     37      |
|         Ember         |     157     |
|          Vue          |     154     |
|        JQuery         |     247     |



