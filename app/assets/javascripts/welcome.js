$(document).ready(function() {
  alert("Hellohellohello");

  document.getElementById('browseBar').addEventListener('change', () => browseSorter());
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
