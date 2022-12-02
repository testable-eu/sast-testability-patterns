# Pattern: This Statment

## Category
Function

## Definition

In JavaScript, the [`this`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this) statement refers to a particular object depending on how it is being used. For example:

* By default, `this` refers to the global object (i.e., `window`).
* In an object method scope, `this` refers to the object.
* In a function scope, `this` refers to the global object.
* In a function scope in [strict mode](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode), `this` is undefined.
* In an event, `this` refers to the `EventTarget` object, i.e., the element that received the event.
* Dynamic methods like call() and apply() can refer `this` to any object.

Determining which object `this` refers to can be challenging for static analysis tools. 

## Instances

### Instance 1

```js
// source
var hash_fragment = window.location.hash.slice(1);

var config = {
    "uri": hash_fragment,
    // [...]
}

ajax_load.call(config)

function ajax_load(){
    var script_element = document.createElement('script');
    let uri = this.uri; // tarpit
    script_element.src = uri; // sink
    document.body.appendChild(script_element);
}



```

