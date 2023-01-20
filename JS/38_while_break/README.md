# Pattern: While Break

## Category

Function

## Definition

The use of iteration control structures like `break` statements inside loops (e.g., `while`) may make it more challenging for SAST tools to conduct flow-sensitive data flow analysis. Because SAST tools often do over-approximation, they may consider (spurious) execution paths that are not reachable due to the presence of iteration control structures.

## Instances

### Instance 1

- CATEGORY: S0
- SOURCESFEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
function F(val){
    let return_value= 'returned_value';
    let index = 0;
    while(true){
        index ++;
        if(index === 1){
            break;
        }
        // dead code
        // but SAST tools may wrongly assume the existence of the data flow 
        return_value = val;
    }
    return return_value;
}

const parsed = route.parse(req.url); // source
const query  = querystring.parse(parsed.query);
let b = query.name;
let output = F(b); // tarpit
res.writeHead(200, {"Content-Type" : "text/html"});
// no XSS
res.write(output); // sink
res.end();
```

SAST tools may wrongly assume that there exists an execution of the program in which function `F(v)` returns `v` (i.e., identity function), resulting in an attacker-controllable data flow. However, because of the `break` statement that execution flow never happens, resulting in a false positive. 

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |   YES       |   YES   | YES       |  NO        |

Measurements Date: 20 May 2021





