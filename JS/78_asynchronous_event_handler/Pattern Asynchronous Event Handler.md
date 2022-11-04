# Pattern: Asynchronous Event Handler

## Category

Web-API

## Definition

stringify method of JSON produces a string from the object passed as argument.

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
let event = new events.EventEmitter('build');
event.a = a;

// Listen for the event.
event.addListener('build', func);

// Dispatch the event.
event.emit('build');

function func(){
    //vulnerability
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(event.a);
    res.end(); 
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |   YES       |   NO    |     YES   | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
```

**Discovery Difficulty Level: **

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
let event = new events.EventEmitter('build');
event.a = a;
// Listen for the event.
//event.addListener('build', func);

// Dispatch the event.
//event.emit('build');
func(event);

function func(event){
    //vulnerability
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(event.a);
    res.end(); 
}
```
### Instance 2

- CATEGORY: D4
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var a = query.name;
var ev = query.func;
let event = new events.EventEmitter('build');
event.a = a;

// Listen for the event.
event.addListener(ev, func);

// Dispatch the event.
event.emit('build');

function func(){
    //vulnerability
    res.writeHead(200, {"Content-Type" : "text/html"});
    res.write(event.a);
    res.end(); 
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |    NO      |    YES      |    NO   |  NO      | YES        |
Measurements Date: 19 July 2021

- DISCOVERY:



**Ideal discovery rule**:

```
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
```

**Discovery Difficulty Level: **

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```javascript
```

## Popularity (Measurements)

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

