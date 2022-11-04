# Pattern: Super Property

## Category

Object

## Definition

When a class extends another and a property is add to the super class, the child class will inherits it at run time.

## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
class first{
    name = 'super';
}
 
class second extends first{
    prop = 'I am second_ex';
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;

let F =new first();
let S = new second();
first.prototype.add = b; //also second_ex class inherits it (but run time)

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(S.add);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |     NO     |    NO   |   NO    |     NO    | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:

 (due to first challenge)

**Ideal discovery rule**:

```
if(defined class && class extends super class){
	parent = super class
	children = defined class
	if(parent.prototype defined){
		STOP: PATTERN FOUND //definition could occur also inside functions
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
var parent_class_name = null; //it works also as a flag to indicate if there is a children class defined (enter on the first if)
            traverse(element.value, {
                enter(path) {
                    if (path.isNewExpression && path.node.callee != undefined && path.node.loc != undefined) {
                        ast.body.forEach(e => {
                            if (e.classes.has(path.node.callee.name)) {
                                let class_path = e.classes.get(path.node.callee.name);
                                //it is not a children class
                                if(class_path.superClass != null){
                                    parent_class_name = class_path.superClass.name;
                                    console.log(parent_class_name);
                                }
                            }
                        });    
                    }
                    
                    if(path.isMemberExpression && parent_class_name != null && path.node.object != undefined && path.node.property != undefined){
                        if(path.node.object.type === "MemberExpression" && path.node.property.name === "add" && path.node.object.object != undefined){
                            if(path.node.object.object.name === parent_class_name){
                               //STOP: pattern found
                            }
                        }
                    }
                }
            });
```

 

- PRECONDITIONS:
   1.
- TRANSFORMATION:
write explicity the property overridden for the children class
```

```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      /      |
|        PayPal         |      /      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      1      |
|      Vynchronize      |      /      |
|      Wiki Vnext       |      /      |
|         Uppy          |      /      |
|        SheetJs        |      /      |
|        Meteor         |      1      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |      1      |
|          Vue          |      /      |
|        JQuery         |      /      |



