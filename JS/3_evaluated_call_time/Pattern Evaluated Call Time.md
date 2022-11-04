# Pattern: Evaluated Call Time

## Category

Function

## Definition

The default argument is evaluated at call time, so a new object is created each time the function is called.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
function append(value, array = []) {
    array.push(value)
    return array;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var v = append(query.name);
v = append('safe');
        
res.writeHead(200, {"Content-Type" : "text/html"});
for(let i=0; i<v.length; i++){
	res.write(v[i]);    
}   
res.end(); 
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | NO   |     -     |    -   |     YES |     NO    |    NO      |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree and Babel parser.

```
path.isAssignmentPattern()
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```
### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function greet(name, greeting, message = greeting + ' ' + name){
    return message;
}

const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var m = greet('name', 'surname', query.name);
//m = greet('name', 'surname'); this would generate message "surname name"
res.writeHead(200, {"Content-Type" : "text/html"});
//XSS
res.write(m);     
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |      NO    |    NO   |    YES  |    YES    |    YES     |
Measurements Date: 20 May 2021

- DISCOVERY:



Ideal discovery rule matches with implementation.

Based on Abstract Syntax Tree and Babel parser.

```
path.isAssignmentPattern()
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
Define explicity as first line of body function the value instead of doing it at call time:
e.g.
message = greeting + ' ' +name
```
```

## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |     377     |
|        PayPal         |     10      |
|      SoundCloud       |      8      |
| Facebook Business SDK |     112     |
|      Vynchronize      |      /      |
|      Wiki Vnext       |     38      |
|         Uppy          |     64      |
|        SheetJs        |      1      |
|        Meteor         |     135     |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |     97      |
|          Vue          |     20      |
|        JQuery         |      /      |
