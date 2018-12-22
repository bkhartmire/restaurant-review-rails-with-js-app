$(document).ready(function() {
  $('#reviews_button').on('click', function(e) {
    listReviews(e)
  })
})

function listReviews(e) {
  e.preventDefault()
  //why does this = the window and not the a#reviews_button element???
  let req = $.get(document.getElementById('reviews_button').href)
  req.done(function(response){
    $("#reviews").empty().append(response)
  })
}
