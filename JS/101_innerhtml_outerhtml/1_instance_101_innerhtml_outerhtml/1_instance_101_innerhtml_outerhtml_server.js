// Client-side XSS
function print(message) {
  var input = document.getElementById("formElement1").value // source
  document.body.innerHTML = input; // sink and tarpit
}




