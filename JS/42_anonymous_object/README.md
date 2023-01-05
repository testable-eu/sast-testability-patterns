# Pattern: Anonymous Object

## Category

Built-In Function

## Definition

In JavaScript, objects can be created by anonymous constructors that do not have a specific name to be referenced with (e.g., an anonymous `class`). This kind of syntactic dynamicity may not be supported by SAST tools. 

## Instances

### Instance 1

- CATEGORY: D1
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
        
util = (new class{
	log(msg){
		res.write(msg);
	}
})

var b = query.name;
res.writeHead(200, {"Content-Type" : "text/html"});
util.log(b);
util = 'string'
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |   NO       |    NO    |    NO   |   NO      | YES        |
Measurements Date: 20 May 2021



## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      2      |
|        PayPal         |      /      |
|      SoundCloud       |      /      |
| Facebook Business SDK |      /      |
|      Vynchronize      |      /      |
|      Wiki Vnext       |     23      |
|         Uppy          |     59      |
|        SheetJs        |      /      |
|        Meteor         |     14      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |     449     |
|          Vue          |      /      |
|        JQuery         |      /      |

