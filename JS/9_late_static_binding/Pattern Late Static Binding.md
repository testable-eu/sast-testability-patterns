# Pattern: Late Static Binding

## Category

Function

## Definition

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function my_class(val){
    this.name = val;
}

my_class.prototype.get_name = function(){
    return this.name;
}

function my_class2(){
    this.name = "safe";
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
res.writeHead(200, {"Content-Type" : "text/html"});
var a = query.name;
my_class2.prototype = new my_class(a);
my_class2.prototype.constructor = my_class2;
my_class_instance = new my_class2();
my_class2.prototype.name;
res.write(my_class_instance.get_name());
//XSS vulnerability
res.write(my_class2.prototype.name);
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |  NO        |    YES      |   YES   |   YES     |  YES      |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
```

**Implementation:**

Based on Abstract Syntax Tree

```
```

**Discovery Difficulty Level:**

- PRECONDITIONS:
   1.
- TRANSFORMATION:
write class and its methods in classic way
```javascript
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |             |
|        PayPal         |             |
|      SoundCloud       |             |
| Facebook Business SDK |             |
|      Vynchronize      |             |
|      Wiki Vnext       |             |
|         Uppy          |             |
|        SheetJs        |             |
|        Meteor         |             |
|        Express        |             |
|          Pug          |             |
|         Ember         |             |
|          Vue          |             |
|        JQuery         |             |



