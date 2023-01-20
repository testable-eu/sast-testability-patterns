# Pattern: Type Juggling

## Category

Statement

## Definition

The first HTML form takes as input the number of characters of the string put in the second form. The function simply prints the second string after having performed on it some operations. 
_CharCodeAt_ returns the ASCII number of the specified index of the string. _String.fromCharCode_ operates as the contrary.

## Instances

### Instance 1

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var number = query.name1;
var stringa = query.name2;
var result = '';
//for each character in 'stringa'
for(let i = 0; i<number; i++){
    //take index of each character
    var od = stringa.charCodeAt(i) + 1;
    od = od - 1;
    //return index and concatenate with res
    result = result.concat(String.fromCharCode(od));
}
// XSS vulnerability, will print word
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(result); //to convert from object/json to string
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  NO  |    NO      |    NO   |    NO   | NO | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule:**

```
if(it is a loop){
	in loop body
		if(at least exist one string variable && variable is modified){
			//variable could also be inside a function called inside the loop body
			STOP: PATTERN FOUND
		}
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

Since false negative outcome only in case string methods are called inside loop, the discovery rule search for loops (while and for) and then checks if there is at least one string method inside (toString, fromCharCode, etc...).

Overapproximation due to loop could be effectively used for sanitization.

```
typejuggling: function isTypeJuggling(ast) {
    ast.body.forEach(element =>{
        let occurences = [];
        traverse(element.value, {
            enter(path) {
                if (path.isForStatement() || path.isWhileStatement()) {
                    //now I have to search in the loop if there is at least one method that modify a string
                    //if I can not find this method, I search for these method in the function called inside => therefore I keep track
                    //of the functions called in.
                    if (thereIsMethodString(path, ast, element.functions)) {
                        if (path.node.loc != undefined) {
                            //PATTERN FOUND
                        }
                    }
                }
            }
        });
        print(element.key, occurences, "TYPE JUGGLING, overapproximation");
    });
}
```

```
function thereIsMethodString(path, ast, functions_set) {
    var b = false;
    //this string methods set does not include the ones that return a boolean value 
    var string_methods = ['charAt',
        'charCodeAt',
        'codePointAt',
        'concat',
        'fromCharCode',
        'fromCodePoint',
        'raw',
        'indexOf',
        'lastIndexOf',
        'normalize',
        'padEnd',
        'padStart',
        'replace',
        'replaceAll',
        'repeat',
        'slice',
        'split',
        'substr',
        'substring',
        'toLocaleLowerCase',
        'toLocaleUpperCase',
        'toLowerCase',
        'toUpperCase',
        'toString',
        'trim',
        'trimStart',
        'trimEnd',
        'valueOf'];

    const MyVisitor = {
        CallExpression(path) {
            if (path.node.callee != undefined) {
                if (path.node.callee.type == 'MemberExpression') {
                    let inner_node = path.node.callee;
                    if (string_methods.includes(inner_node.property.name)) {
                        b = true;
                        return;
                    }else {
                    //other function that could be in another file or in the same file and performs methods we are searching for
                        //1st case: function inside same file
                        if(functions_set.has(inner_node.property.name)){
                            if(thereIsMethodString(functions_set.get(inner_node.property.name), ast, functions_set)){
                                b = true;
                                return;
                            }
                        }else{
                             //2nd case: function in another external file (therefore another AST), it needs to check on imported files
                            external.forEach(name => {
                                ast.body.forEach(element => {
                                    if(element.key == name && element.functions.has(inner_node.property.name)){
                           			         if(thereIsMethodString(element.functions.get(inner_node.property.name), ast, element.functions)){
                                            b_tj = true;
                                        	return;
                                    	}
                                    }
                                });
                            });
                        }
                    }
                }
            }
        }
    };

    path.traverse(MyVisitor);
    return b;
}
```

**Discovery Difficulty Level: HIGH and with OVERAPPROXIMATION** 

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```
### Instance 2

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var number = query.name1;
var stringa = query.name2;
var result = stringa.slice(0, number -1);

var od = stringa.charCodeAt(number -1) + 1;
od = od - 1;
//return index and concatenate with res
result = result.concat(String.fromCharCode(od));

// XSS vulnerability, will print word
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(result); 
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO   | YES | YES | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if(it is a loop){
	in loop body
		if(at least exist one string variable && variable is modified){
			//variable could also be inside a function called inside the loop body
			STOP: PATTERN FOUND
		}
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

Since false negative outcome only in case string methods are called inside loop, the discovery rule search for loops (while and for) and then checks if there is at least one string method inside (toString, fromCharCode, etc...).

Overapproximation due to loop could be effectively used for sanitization.

```
typejuggling: function isTypeJuggling(ast) {
    ast.body.forEach(element =>{
        let occurences = [];
        traverse(element.value, {
            enter(path) {
                if (path.isForStatement() || path.isWhileStatement()) {
                    //now I have to search in the loop if there is at least one method that modify a string
                    //if I can not find this method, I search for these method in the function called inside => therefore I keep track
                    //of the functions called in.
                    if (thereIsMethodString(path, ast, element.functions)) {
                        if (path.node.loc != undefined) {
                            //PATTERN FOUND
                        }
                    }
                }
            }
        });
        print(element.key, occurences, "TYPE JUGGLING, overapproximation");
    });
}
```

```
function thereIsMethodString(path, ast, functions_set) {
    var b = false;
    //this string methods set does not include the ones that return a boolean value 
    var string_methods = ['charAt',
        'charCodeAt',
        'codePointAt',
        'concat',
        'fromCharCode',
        'fromCodePoint',
        'raw',
        'indexOf',
        'lastIndexOf',
        'normalize',
        'padEnd',
        'padStart',
        'replace',
        'replaceAll',
        'repeat',
        'slice',
        'split',
        'substr',
        'substring',
        'toLocaleLowerCase',
        'toLocaleUpperCase',
        'toLowerCase',
        'toUpperCase',
        'toString',
        'trim',
        'trimStart',
        'trimEnd',
        'valueOf'];

    const MyVisitor = {
        CallExpression(path) {
            if (path.node.callee != undefined) {
                if (path.node.callee.type == 'MemberExpression') {
                    let inner_node = path.node.callee;
                    if (string_methods.includes(inner_node.property.name)) {
                        b = true;
                        return;
                    }else {
                    //other function that could be in another file or in the same file and performs methods we are searching for
                        //1st case: function inside same file
                        if(functions_set.has(inner_node.property.name)){
                            if(thereIsMethodString(functions_set.get(inner_node.property.name), ast, functions_set)){
                                b = true;
                                return;
                            }
                        }else{
                             //2nd case: function in another external file (therefore another AST), it needs to check on imported files
                            external.forEach(name => {
                                ast.body.forEach(element => {
                                    if(element.key == name && element.functions.has(inner_node.property.name)){
                           			         if(thereIsMethodString(element.functions.get(inner_node.property.name), ast, element.functions)){
                                            b_tj = true;
                                        	return;
                                    	}
                                    }
                                });
                            });
                        }
                    }
                }
            }
        }
    };

    path.traverse(MyVisitor);
    return b;
}
```

**Discovery Difficulty Level: HIGH and with OVERAPPROXIMATION** 

- PRECONDITIONS:
   1.
- TRANSFORMATION:
```
```
### Instance 3

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var number = query.name1;
var stringa = query.name2;
var result = stringa.slice(0, number -2);
var string1 = '';
var string2 = '';

for(let i = number-2; i<number; i++){
    var od = stringa.charCodeAt(i) + 1;
    od = od - 1;
    if(i == number-2){
        string1 = od;
    }else{
        string2 = od;
    }  
}
        
//return index and concatenate with res
result = result.concat(String.fromCharCode(string1));
result = result.concat(String.fromCharCode(string2));

// XSS vulnerability, will print word
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(result); 
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability | YES  |     NO     |    NO   | YES | YES | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if(it is a loop){
	in loop body
		if(at least exist one string variable && variable is modified){
			//variable could also be inside a function called inside the loop body
			STOP: PATTERN FOUND
		}
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

Since false negative outcome only in case string methods are called inside loop, the discovery rule search for loops (while and for) and then checks if there is at least one string method inside (toString, fromCharCode, etc...).

Overapproximation due to loop could be effectively used for sanitization.

```
typejuggling: function isTypeJuggling(ast) {
    ast.body.forEach(element =>{
        let occurences = [];
        traverse(element.value, {
            enter(path) {
                if (path.isForStatement() || path.isWhileStatement()) {
                    //now I have to search in the loop if there is at least one method that modify a string
                    //if I can not find this method, I search for these method in the function called inside => therefore I keep track
                    //of the functions called in.
                    if (thereIsMethodString(path, ast, element.functions)) {
                        if (path.node.loc != undefined) {
                            //PATTERN FOUND
                        }
                    }
                }
            }
        });
        print(element.key, occurences, "TYPE JUGGLING, overapproximation");
    });
}
```

```
function thereIsMethodString(path, ast, functions_set) {
    var b = false;
    //this string methods set does not include the ones that return a boolean value 
    var string_methods = ['charAt',
        'charCodeAt',
        'codePointAt',
        'concat',
        'fromCharCode',
        'fromCodePoint',
        'raw',
        'indexOf',
        'lastIndexOf',
        'normalize',
        'padEnd',
        'padStart',
        'replace',
        'replaceAll',
        'repeat',
        'slice',
        'split',
        'substr',
        'substring',
        'toLocaleLowerCase',
        'toLocaleUpperCase',
        'toLowerCase',
        'toUpperCase',
        'toString',
        'trim',
        'trimStart',
        'trimEnd',
        'valueOf'];

    const MyVisitor = {
        CallExpression(path) {
            if (path.node.callee != undefined) {
                if (path.node.callee.type == 'MemberExpression') {
                    let inner_node = path.node.callee;
                    if (string_methods.includes(inner_node.property.name)) {
                        b = true;
                        return;
                    }else {
                    //other function that could be in another file or in the same file and performs methods we are searching for
                        //1st case: function inside same file
                        if(functions_set.has(inner_node.property.name)){
                            if(thereIsMethodString(functions_set.get(inner_node.property.name), ast, functions_set)){
                                b = true;
                                return;
                            }
                        }else{
                             //2nd case: function in another external file (therefore another AST), it needs to check on imported files
                            external.forEach(name => {
                                ast.body.forEach(element => {
                                    if(element.key == name && element.functions.has(inner_node.property.name)){
                           			         if(thereIsMethodString(element.functions.get(inner_node.property.name), ast, element.functions)){
                                            b_tj = true;
                                        	return;
                                    	}
                                    }
                                });
                            });
                        }
                    }
                }
            }
        }
    };

    path.traverse(MyVisitor);
    return b;
}
```

**Discovery Difficulty Level: HIGH and with OVERAPPROXIMATION** 

- PRECONDITIONS:
   1.
- TRANSFORMATION:

### Instance 4

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: YES
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
var number = query.name1;
var stringa = query.name2;
var result = stringa.slice(0, number -1);

var od = stringa.charCodeAt(number -1);
od = od - 1;
//return index and concatenate with res
result = result.concat(String.fromCharCode(od));

// XSS vulnerability, will print word
res.writeHead(200, {"Content-Type" : "text/html"});
res.write(result); 
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |   -       |  -     | YES | YES | NO        |
Measurements Date: 21 July 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if(it is a loop){
	in loop body
		if(at least exist one string variable && variable is modified){
			//variable could also be inside a function called inside the loop body
			STOP: PATTERN FOUND
		}
}
```

**Implementation:**

Based on Abstract Syntax Tree and Babel parser.

Since false negative outcome only in case string methods are called inside loop, the discovery rule search for loops (while and for) and then checks if there is at least one string method inside (toString, fromCharCode, etc...).

Overapproximation due to loop could be effectively used for sanitization.

```
typejuggling: function isTypeJuggling(ast) {
    ast.body.forEach(element =>{
        let occurences = [];
        traverse(element.value, {
            enter(path) {
                if (path.isForStatement() || path.isWhileStatement()) {
                    //now I have to search in the loop if there is at least one method that modify a string
                    //if I can not find this method, I search for these method in the function called inside => therefore I keep track
                    //of the functions called in.
                    if (thereIsMethodString(path, ast, element.functions)) {
                        if (path.node.loc != undefined) {
                            //PATTERN FOUND
                        }
                    }
                }
            }
        });
        print(element.key, occurences, "TYPE JUGGLING, overapproximation");
    });
}
```

```
function thereIsMethodString(path, ast, functions_set) {
    var b = false;
    //this string methods set does not include the ones that return a boolean value 
    var string_methods = ['charAt',
        'charCodeAt',
        'codePointAt',
        'concat',
        'fromCharCode',
        'fromCodePoint',
        'raw',
        'indexOf',
        'lastIndexOf',
        'normalize',
        'padEnd',
        'padStart',
        'replace',
        'replaceAll',
        'repeat',
        'slice',
        'split',
        'substr',
        'substring',
        'toLocaleLowerCase',
        'toLocaleUpperCase',
        'toLowerCase',
        'toUpperCase',
        'toString',
        'trim',
        'trimStart',
        'trimEnd',
        'valueOf'];

    const MyVisitor = {
        CallExpression(path) {
            if (path.node.callee != undefined) {
                if (path.node.callee.type == 'MemberExpression') {
                    let inner_node = path.node.callee;
                    if (string_methods.includes(inner_node.property.name)) {
                        b = true;
                        return;
                    }else {
                    //other function that could be in another file or in the same file and performs methods we are searching for
                        //1st case: function inside same file
                        if(functions_set.has(inner_node.property.name)){
                            if(thereIsMethodString(functions_set.get(inner_node.property.name), ast, functions_set)){
                                b = true;
                                return;
                            }
                        }else{
                             //2nd case: function in another external file (therefore another AST), it needs to check on imported files
                            external.forEach(name => {
                                ast.body.forEach(element => {
                                    if(element.key == name && element.functions.has(inner_node.property.name)){
                           			         if(thereIsMethodString(element.functions.get(inner_node.property.name), ast, element.functions)){
                                            b_tj = true;
                                        	return;
                                    	}
                                    }
                                });
                            });
                        }
                    }
                }
            }
        }
    };

    path.traverse(MyVisitor);
    return b;
}
```

**Discovery Difficulty Level: HIGH and with OVERAPPROXIMATION** 

- PRECONDITIONS:
   1.
- TRANSFORMATION:
transformation defined by the developer
```
```
## Popularity (Measurements)

Open Source Web Applications (from testbed):

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      3      |
|        PayPal         |      /      |
|      SoundCloud       |     21      |
| Facebook Business SDK |      /      |
|      Vynchronize      |     26      |
|      Wiki Vnext       |     14      |
|         Uppy          |      8      |
|        SheetJs        |      /      |
|        Meteor         |      /      |
|        Express        |      6      |
|          Pug          |      /      |
|         Ember         |      /      |
|          Vue          |      /      |
|        JQuery         |      /      |

