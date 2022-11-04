# Pattern: GET Ajax request

## Category

Network

## Definition

It is client side.

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS: NO 
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
var nameValue = document.getElementById("formElement1").value;
var url = "http://127.0.0.1:8080/query/?name="+nameValue;
var xhttp = new XMLHttpRequest();
xhttp.open("GET", url, true);
xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        // Response
        var response = this.responseText; 
        document.write(response);
    }
};
xhttp.send();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |    NO      |   YES       |    YES  |    YES    | YES        |
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
```js
var nameValue = document.getElementById("formElement1").value;
var url = "http://127.0.0.1:8080/query/?name="+nameValue;
var xhttp = new XMLHttpRequest();
xhttp.open("GET", url, true);
xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
//xhttp.setRequestHeader('Access-Control-Allow-Origin', '*');
xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        // Response
        var response = this.responseText; 
        document.write(response);
    }
};
xhttp.send();
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





