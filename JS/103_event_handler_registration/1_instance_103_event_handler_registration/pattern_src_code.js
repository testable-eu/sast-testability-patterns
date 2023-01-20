/**
 * testability pattern: event_handler_registration
 * ----------------------------------------------
 * source: window.location.hash
 * tarpit: EventTarget.addEventListener(eventType, eventHandler)
 * sink: HTMLScriptElement.src
 */

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