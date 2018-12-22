$(document).ready(function() {
  //why isn't jquery selector working? $("#browse_bar")[0] no method error
  //($('#browse_bar')[0]).on('change', browseSorter(), false)
  if (document.getElementById('browse_bar')) {
    document.getElementById('browse_bar').addEventListener('change', () => browseSorter(), false)
  }
  $('.country_item').on("click", function(e) {listCountryRestaurants(e)}, false)
})

function browseSorter() {
  var browseValue = document.getElementById('browse_bar').value;
  let req = $.get(browseValue)
  req.done(function(response){
    $("#display_list").empty().append(response)
  })
}

function listCountryRestaurants(e) {
  e.preventDefault()
  alert('Hello')
}
