# Pattern: Event Handler Removal

## Category
Events

## Definition
In JavaScript, the transfer of control flow not only happens via synchronous function calls, but also via events.

Some APIs like [`EventTarget.removeEventListener(eventType, eventHandler)`](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/removeEventListener) can be used to remove previously-registered event handler functions on [HTMLElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement) objects. As a result, such functions will NOT be invoked anymore when the corresponding event type is dispatched. This can lead to false positives when security testing tools fail to handle or model event handler de-registration. 


## Instances

### Instance 1

```js
// source
var hash_fragment = window.location.hash.slice(1);

var button = document.querySelector('button');
button.addEventListener('click', event_handler); // tarpit

// [...]

let event_type = 'c' + 'l'+ 'i' + 'c' + 'k'; // dynamically computed
button.removeEventListener(event_type, event_handler); // tarpit
button.click();

function event_handler(evt){
    evt.preventDefault();
    
    var script_element = document.createElement('script');
    // sink
    script_element.src = hash_fragment;
    document.body.appendChild(script_element);
}
```

