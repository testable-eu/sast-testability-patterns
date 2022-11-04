# Pattern: Static Method and Properties

## Category

Object

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
class Foo{
    static b = 'safe';
    constructor(b){
        this.b = b;
    }
    baz(){
        res.write(this.b);
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
res.writeHead(200, {"Content-Type" : "text/html"});
var b = query.name;
var obj = new Foo(b);
obj.baz();      
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  | NO         |    NO   |    NO   |  YES      |   YES     |
Measurements Date: 20 May 2021

- DISCOVERY:



1st and 2nd challenges are as "Static Variable" Pattern.

Ideal discovery rule matches implementation

Based on Abstract Syntax Tree and Babel Parser:

```
if(path.isClassMethod() && path.node.static == true)
```

 

- PRECONDITIONS:
   1.
- TRANSFORMATION:
ask Feras
```

```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      2      |
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







