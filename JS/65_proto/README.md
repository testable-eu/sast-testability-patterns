# Pattern: Proto

## Category

Object

## Definition

To change the value of an object property at run time and have that value inherited by all descendants, the property has to be defined not in constructor function but added on the constructor's associated prototype.

The [__proto__](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/proto) accessor property of Object.prototype exposes the [Prototype Chain](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain) of this object. The __proto__ property is set when objects are constructed and set to the value of prototype property. _instanceOf_ returns true if the object inherits from the function prototype.

## Instances

### Instance 1

- CATEGORY: D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
//taken from https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Details_of_the_Object_Model
function instanceOf(object, constructor) {
    object = object.__proto__;
    while (object != null) {
        if (object == constructor.prototype)
            return true;
        object = object.__proto__;
    }
    return false;
}

function One(){
    this.prop = 'one';
}

function Two(){
    this.prop2 = 'two';
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
One.prototype.name = 'one';
Two.prototype = new One;
var t = new Two;
        
res.writeHead(200, {"Content-Type" : "text/html"});
	if(instanceOf(t, Two)){
        One.prototype.name = b;
        //XSS
        res.write(t.name)
    }
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |      NO    |    NO   |    YES  |   NO      |     YES     |
Measurements Date: 20 May 2021

- DISCOVERY:

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it. The node type of AST has to be a  MemberExpression and property name prototype or __proto\_\_.

```
if(path.isMemberExpression && path.node.property != undefined){
	if(path.node.property.name === "__proto__" || path.node.property.name === "prototype"){
		...
	}	
}    
```

- TRANSFORMATION:
developer intervention

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     53      |
|        PayPal         |      6      |
|      SoundCloud       |     13      |
| Facebook Business SDK |      3      |
|      Vynchronize      |     33      |
|      Wiki Vnext       |     10      |
|         Uppy          |      9      |
|        SheetJs        |     554     |
|        Meteor         |     750     |
|        Express        |     27      |
|          Pug          |      7      |
|         Ember         |     133     |
|          Vue          |     85      |
|        JQuery         |     37      |





