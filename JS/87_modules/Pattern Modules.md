# Pattern: Modules

## Category

Property

## Definition

Since node.js is used, _import_ keyword has to be changed with _require_.

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
//in modules/b.js
module.exports = {
    assign: function (val) {
        this.b_in_modules = val;
    },

    get: function () {
        return this.b_in_modules;
    }
};

//in server.js
var modules = require('./1_instance_87_modules/modules/b');

const parsed = route.parse(req.url);
const query = querystring.parse(parsed.query);
var b = query.name;
modules.assign(b);

res.writeHead(200, {"Content-Type": "text/html"});
res.write(modules.get());
res.end(); 
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |     NO     |    NO   |    NO   |    YES    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree and Babel parser.

- For export:

  ```
  if(path.isIdentifier() && path.node.name === "module" && path.node.property != undefined){
  	if(path.node.property.name === "exports"){
  		...
  	}
  }
  ```

- For import:

  ```
  path.isImportDeclaration()
  ```

- For require:

  ```
  path.isCallExpression() && path.node.callee.name == "require"
  ```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
function assign(val){
    this.b_in_modules = val;
}

function get(){
    return this.b_in_modules;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
/*instead of define a function in another file, the function is defined directly in this file*/
assign(b);
        
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(get());   
res.end(); 
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     117     |
|        PayPal         |      5      |
|      SoundCloud       |     49      |
| Facebook Business SDK |     184     |
|      Vynchronize      |     11      |
|      Wiki Vnext       |     525     |
|         Uppy          |    1215     |
|        SheetJs        |     313     |
|        Meteor         |     725     |
|        Express        |     426     |
|          Pug          |     171     |
|         Ember         |     340     |
|          Vue          |     104     |
|        JQuery         |     64      |







