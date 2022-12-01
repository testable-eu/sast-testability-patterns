# Pattern: Event Dispatch

## Category
Events

## Definition
In JavaScript, the transfer of control flow not only happens via synchronous function calls, but also via events.

Some APIs like [`EventTarget.dispatchEvent(event)`](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/dispatchEvent) can be used to trigger an [Event](https://developer.mozilla.org/en-US/docs/Web/API/Event) of type T (e.g., `click`), and invoke the corresponding registered [EventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener) function on the `EventTarget` object.   

Some event types can also be fired using specific Web APIs that target only those events, such as:
*  [EventTarget.click()](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/click)
*  [EventTarget.blur()](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/blur)
*  [EventTarget.focus()](https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/focus)

Custom event types can be created via the [`CustomEvent(type)`](https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent/CustomEvent) API and then fired by [EventTarget.dispatchEvent(event)](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/dispatchEvent) .


## Instances

### Instance 1

```js
// source
var hash_fragment = window.location.hash.slice(1);

var button = document.querySelector('button');
button.addEventListener('click', event_handler);

// tarpit
let event = new Event('click');
button.dispatchEvent(event);

function event_handler(evt){
    evt.preventDefault();
    
    var script_element = document.createElement('script');
    // sink
    script_element.src = hash_fragment;
    document.body.appendChild(script_element);
}
```

