function request(){
    var nameValue = document.getElementById("formElement1").value;
    var url = "http://127.0.0.1:8080/query/?name="+nameValue;
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET", url, true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    //xhttp.setRequestHeader('Access-Control-Allow-Origin', '*');
    xhttp.onreadystatechange = function() {
       if (this.readyState == 4 && this.status == 200) {
    
          // Response
          var response = this.responseText; 
          document.write(response);
       }
    };
    xhttp.send();
    document.write(url);
}
