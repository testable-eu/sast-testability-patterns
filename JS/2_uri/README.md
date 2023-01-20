# Pattern: Uri

## Category

Function

## Definition

The [encodeURI](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/encodeURI) and [decodeURI](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/decodeURI) functions can be used to encode and decode a URL by replacing each instance of certain characters by one, two, three, or four escape sequences representing the UTF-8 encoding of the character. SAST tools not modeling the semantics of these functions can produce false positives when assessing the feasibility of security-sensitive source-sink data flows. 


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
const uri = decodeURI(query.name);  // tarpit
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(uri); // sink
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     | YES         |    YES  |   YES     | YES        |
Measurements Date: 20 May 2021


### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: YES
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url); // source
const query  = querystring.parse(parsed.query);
const uri = encodeURI(query.name);  // tarpit
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(uri); // sink
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |    NO      |   YES       |    NO   |   YES     | NO         |
Measurements Date: 20 May 2021


- TRANSFORMATION:
developer intervention
```
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



