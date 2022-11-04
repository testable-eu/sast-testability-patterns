# Pattern: Location Assign with Search

## Category

WEB API

## Definition

_window.location.search_ takes the parameters passed after ? in the URL. While _window.location.assign()_ upload the page with parameter passed as argument. Combination of these two is a testability pattern.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
var location = window.location;
var url = location.search;
location.assign(url);
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |   YES       |    NO   |   YES     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:

**PRIORITY DISCOVERY LEVEL: **

Ideal discovery rule:

```javascript
```

Based on Abstract Syntax Tree and Babel parser.

```
```

**Discovery Difficulty Level: **

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```js
var location = window.location;
var url = location.search;
location.assign(url);
document.write(url);
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

