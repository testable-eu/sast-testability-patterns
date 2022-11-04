# Pattern: Object Clone

## Category

Object

## Definition

To clone an object, in JavaScript is used the _Object.assign()_ method, which copies all the enumerable own properties from one or more source object to the returned target one.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class myClass{
	b = 'safe';
	constructor(val){
		this.b = val;
	}

	out(){
        //XSS
        res.writeHead(200, {"Content-Type" : "text/html"});
	    res.write(this.b);
        res.end();	
	}
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
b = query.name;
obj1 = new myClass(b);
obj2 = new myClass('');
obj2 = Object.assign(obj2, obj1);
obj2.out(); 
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |       NO   |    NO   |      NO |     NO    |  YES      |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree and Babel parser.

```
path.isMemberExpression() && path.node.object.name === "Object" && path.node.property.name === "assign")
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
obj2=obj1
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     36      |
|        PayPal         |      1      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      1      |
|      Vynchronize      |      1      |
|      Wiki Vnext       |      1      |
|         Uppy          |     122     |
|        SheetJs        |      7      |
|        Meteor         |     91      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |     10      |
|          Vue          |     19      |
|        JQuery         |      2      |

