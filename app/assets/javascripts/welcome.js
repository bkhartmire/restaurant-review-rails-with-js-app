$(document).ready(function() {
  addEventListeners()
})

function addEventListeners() {
  $('#reviews_button').on('click', function(e) {
    listReviews(e)
  })
}
function browseSorter() {
  var browseValue = document.getElementById('browse_bar').value;
  let req = $.get(browseValue)
  req.done(function(response){
    $("#display_list").empty().append(response)
  })
}

function listReviews(e) {
  e.preventDefault()
  //why does this = the window and not the a#reviews_button element???
  let req = $.get(document.getElementById('reviews_button').href)
  req.done(function(response){
    $("#reviews").empty().append(response)
  })
}
