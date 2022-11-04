# Pattern: Closure Scope Chain

## Category

Function

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
//global scope
function assign(val){
    return function(val2){
        return function(val3){
            //outer functions scope
            return function(val4){
                //local scope
                return val + val2 + val3 + val4;
            }
        }
    }
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var b = query.name;
        
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(assign(b)(': this ')('is ')('input'));     
res.end();
```
- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |   NO       | YES         |    YES  |    NO     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal Discovery Rule:**

```
if(function){
	check:
		if(return function){
			if(return variable){
				STOP: PATTERN FOUND
			}
            check
        }
}
```

**Implementation:**

Based on Abstract Syntax Tree

```

```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
"unpack" functions and call separately

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

