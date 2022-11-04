# Pattern: innerHTML and outerHTML

## Category

DOM side

## Definition

innerHTML and outerHTML permit to change HTML element on client side (not available for server side JS). 

## Instances

### Instance 1

- CATEGORY:  S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: YES
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function print() {
  document.body.innerHTML = document.getElementById("formElement1").value;
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO    |   NO    |   YES     | YES        |
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
function print() {
  document.body.innerHTML = document.getElementById("formElement1").value;
  document.write(document.body.innerHTML);
}
```
### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
function print() {
  document.body.outerHTML = document.getElementById("formElement1").value;
}
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |    NO      |    NO   |    NO   |    YES    | YES        |
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
function print() {
  document.body.outerHTML = document.getElementById("formElement1").value;
  document.write(document.body.outerHTML);
}
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













