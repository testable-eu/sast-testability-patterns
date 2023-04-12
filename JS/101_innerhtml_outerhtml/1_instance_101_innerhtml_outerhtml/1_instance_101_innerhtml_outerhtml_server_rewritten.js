// Client-side XSS
function print(message) {
  var input = document.getElementById("formElement1").value // source
  document.body.innerHTML = input; // sink and tarpit
  document.write(document.body.innerHTML); // sink: additional to ease the SAST analysis
}




