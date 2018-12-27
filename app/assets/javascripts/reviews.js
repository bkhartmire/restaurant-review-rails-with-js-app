$(document).ready(function() {

  $('.list_reviews').on('click', function(e) {
    listReviews(e)
  })

  $('.add_review').on('click', function(e) {
    let self = this
    addReview(e, self)
  })

  $('a.see_review').on('click', function(e) {
    let self = this
    seeReview(e, self)
  })

  $('a.list_reviews').on('click', function(e) {
    let self = this
    debugger
    listReviews(e, self)
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
    $(`div.${self.classList[1]}`).empty().append(response)
  })
}

function seeReview(e, self) {
  e.preventDefault()
  let div = $('div.' + self.classList[1])
  if (div.html() === "") {
    let req = $.get(self.href)
    req.done(function(response){
      div.append(response)
    })
  } else {
    div.empty()
  }
}

function listReviews(e, self) {
  e.preventDefault()
  //debugger
  alert("HI")
}
