$(document).ready(function() {
  //why isn't jquery selector working? $("#browse_bar")[0] no method error
  //($('#browse_bar')[0]).on('change', browseSorter(), false)
  if (document.getElementById('browse_bar')) {
    document.getElementById('browse_bar').addEventListener('change', () => browseSorter(), false)
  }
  //$('.country_item').on("click", function(e) {listCountryRestaurants(e)}, false)
  //defactor browseSorter so that you can manually define consequent events
})

function browseSorter() {
  var browseValue = document.getElementById('browse_bar').value;
  let req = $.get(browseValue)
  req.done(function(response, browseValue){
    $("#display_list").empty().append(response).ready(addListener())
  })
}

function addListener(browseValue) {
  alert("IN FUNCTION")
  var browseValue = document.getElementById('browse_bar').value;
  if (browseValue === "countriesAZ" || browseValue === "countriesMost") {
    alert("in conditional")
    var countryArray = document.getElementsByClassName('country_item')
    for(var i = 0; i < countryArray.length; i++){
      countryArray[i].addEventListener("click", function(e){listCountryRestaurants(e)}, false)
    }
  }
}

function listCountryRestaurants(e) {
  e.preventDefault()
  alert('Hello')
}
