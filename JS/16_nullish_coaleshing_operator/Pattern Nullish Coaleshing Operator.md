# Pattern: Nullish Coaleshing Operator

## Category

Functions

## Definition

The **nullish coalescing operator (??)** is a logical operator that returns its right-hand side operand when its left-hand side operand is null or undefined, and otherwise returns its left-hand side operand.

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS: NO
- SOURCES AND SINKS: NO
- NEGATIVE TEST CASES: NO
- CODE:

```javascript
const parsed = route.parse(req.url);
const query  = querystring.parse(parsed.query);
const b = query.name;   
const nullValue = null;
const foo = nullValue ?? b;

res.writeHead(200, {"Content-Type" : "text/html"});
res.write(foo);
res.end();
```

- MEASUREMENT:

|     Tool      | LGTM | NodeJsScan | Comm_3 | Comm_1 | Comm_2 | Vulnerable |
| :-----------: | :--: | :--------: | :------: | ------- | --------- | ---------- |
| Vulnerability |  YES |    NO      |  YES       |   NO    |    NO     | YES        |
Measurements Date: 20 May 2021

- DISCOVERY:



**Ideal discovery rule**:

```
if ??
```

**Implementation:**

Based on Abstract Syntax Tree (AST) and Babel parser to generate and traverse it.

```
if (path.isLogicalExpression() && path.node.operator != undefined) {
	if (path.node.operator === "??") {
		occurences.push(path.node.loc.start.line);
	}
}
```



- PRECONDITIONS:
   1.
- TRANSFORMATION:
if (nullValue == null){
	return b
}else{
	return nullValue
}

## Popularity (Measurements)

|    Web Application    | #Occurences |
| :-------------------: | :---------: |
|      Mattermost       |      3      |
|        PayPal         |      /      |
|      SoundCloud       |      /      |
| Facebook Business SDK |             |
|      Vynchronize      |      /      |
|      Wiki Vnext       |      /      |
|         Uppy          |      1      |
|        SheetJs        |      /      |
|        Meteor         |      /      |
|        Express        |      /      |
|          Pug          |      /      |
|         Ember         |      /      |
|          Vue          |      /      |
|        JQuery         |      /      |



