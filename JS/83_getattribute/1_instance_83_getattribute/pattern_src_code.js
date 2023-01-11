/**
 * testability pattern: reflect_get 
 * ----------------------------------------------
 * source: data_type
 * tarpit: getAttribute();
 * sink: document.write()
 */

var content = document.getElementsByTagName("DIV")[0].getAttribute('data_type'); //source
document.write(content);//sink