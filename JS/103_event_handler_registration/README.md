# Pattern: Event Handler Registration

## Category
Events

## Definition
In JavaScript, the transfer of control flow not only happens via synchronous function calls, but also via events.

Some APIs like [`EventTarget.addEventListener(eventType, eventHandler)`](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener) can be used to register event handler functions on [HTMLElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement) objects. These handler functions will be invoked asynchronously when the corresponding event type is dispatched. 

## Instances

### Instance 1

```js
// source
var hash_fragment = window.location.hash.slice(1);

var button = document.querySelector('button');


let event_type = 'c' + 'l'+ 'i' + 'c' + 'k'; // dynamically computed
button.addEventListener(event_type, event_handler); // tarpit
button.click();

function event_handler(evt){
    evt.preventDefault();
    
    var script_element = document.createElement('script');
    // sink
    script_element.src = hash_fragment;
    document.body.appendChild(script_element);
}
```

