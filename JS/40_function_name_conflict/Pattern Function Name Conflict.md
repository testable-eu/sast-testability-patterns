# Pattern: Function Name Conflict

## Category

Function

## Definition

Name conflict happens when two arguments or variables in the scopes of a closure have the same name. In this case, the more nested scope, takes precedence (inner-most scope has got the highest precedence).

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function outer(){
    var x = 'safe';
    function insider(x){
        return x;
    }
    return insider;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(outer()(a));
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    YES      |    YES  |    YES    |  YES       |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
if(variable inside function){
	var = variable;
	if(in body function there is another function && argument name variable == var){
		STOP: PATTERN FOUND
	}
}
```

**Implementation:**

Based on Abstract Syntax Tree

```
```

**Discovery Difficulty Level:**

- PRECONDITIONS:
   1.
- TRANSFORMATION:
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



