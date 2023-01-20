# Pattern: Array Shift

## Category

Function

## Definition

The [`shift()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/shift) method removes the first element of an array and returns that element. 

This operation is important for taint tracking. For example, assuming an array is tainted with a source, performing a `shift()` operation may remove the taint from the array if the source data has tainted (only) the first element of that array. SAST tools not handling the `shift()` semantic will incorrectly assume the array is tainted while the taint has been removed, possibly resulting in false positives in data flow analysis.  


## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url); // source
const query  = querystring.parse(parsed.query);
const b = query.name;   
let myArray = new Array(b, '1', '2');
element = myArray.shift(); // tarpit

res.writeHead(200, {"Content-Type" : "text/html"});
// XSS 
res.write(element); // sink
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |    NO      |    NO   |    YES  |    YES    |  YES       |
Measurements Date: 20 May 2021

### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url); // source
const query  = querystring.parse(parsed.query);
const b = query.name;   
let myArray = new Array(b, '1', '2');
element = myArray.shift(); // tarpit

res.writeHead(200, {"Content-Type" : "text/html"});
// no XSS
for(let i = 0; i<myArray.length; i++){
    res.write(myArray[i]); // sink
}
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    -      |    -   |    YES  |    YES    | NO         |
Measurements Date: 20 May 2021


- TRANSFORMATION:
shift explicity the array:
```
array[n-1]=array[n]
...
array[0]=array[1]
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



