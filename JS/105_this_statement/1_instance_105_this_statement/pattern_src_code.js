/**
 * testability pattern: this_statement
 * ----------------------------------------------
 * source: window.location.hash
 * tarpit: this.property
 * sink: HTMLScriptElement.src
 */

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


