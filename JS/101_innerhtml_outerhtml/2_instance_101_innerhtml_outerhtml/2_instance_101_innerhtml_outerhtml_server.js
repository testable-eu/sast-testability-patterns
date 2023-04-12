// Client-side XSS
function print(message) {
  var input = document.getElementById("formElement1").value // source
  document.body.outerHTML = input; // sink and tarpit
}




