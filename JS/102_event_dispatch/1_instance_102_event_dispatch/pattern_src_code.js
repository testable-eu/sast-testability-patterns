/**
 * testability pattern: event_dispatch 
 * ----------------------------------------------
 * source: window.location.hash
 * tarpit: EventTarget.dispatchEvent(evt)
 * sink: HTMLScriptElement.src
 */

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