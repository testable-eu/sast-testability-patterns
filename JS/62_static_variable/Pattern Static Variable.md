# Pattern: Static Variable

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
class MyClass{
    static variable = 'safe';
    F(v){
        if(v!= undefined){
            this.variable = v;
        }else{
            res.write(this.variable);
        }
    }    
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
res.writeHead(200, {"Content-Type" : "text/html"});
c = new MyClass();
c.F(b); //set the static variable
c.F(); //the statiVar is not dead inside F, so it prints the previous value
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |     NO     |    NO   | NO      | YES        |  YES      |
Measurements Date: 15 July 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
if(variable as static){
	STOP: PATTERN FOUND
}
```

**Implementation:**

Based on Abstract Syntax Tree

```
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
to ask Feras since php pattern in common
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

