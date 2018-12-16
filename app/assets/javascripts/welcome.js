$(document).ready(function() {
  alert("Hellohellohello");

  $('#browseBar').addEventListener('change', alert("Event Listener"));
});



function browseSorter() {
  var browseValue = document.getElementById('browseBar').value;
  if (browseValue === "countryAZ") {
    $('#displayRestaurants').append(
      '<h1>Hello</h1>')
  } else {
    alert("Hello")
  }
}
