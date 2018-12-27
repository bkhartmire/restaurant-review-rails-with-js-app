$(document).ready(function() {
  $('.list_reviews').on('click', function(e) {
    listReviews(e)
  })
  $('.add_review').on('click', function(e) {
    let self = this
    addReview(e, self)
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

function addReview(e, self) {
  e.preventDefault()
  let req = $.get(self.href)
  req.done(function(response){
    $('div.review_form').empty().append(response)
  })
}
