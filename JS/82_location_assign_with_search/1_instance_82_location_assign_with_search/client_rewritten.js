
function print() {
      var location = window.location;
      var url = location.search;
      location.assign(url);
      document.write(url);
}




