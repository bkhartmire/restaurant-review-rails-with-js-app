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

  $('a.list_reviews')[0].addEventListener('click', function(e) {
    let self = this
    listReviews(e, self)
  })
  alert("js loading")
})

function listReviews(e, self) {
  e.preventDefault()
  alert(self.classList[0])
  let req = $.get(self.href)
  req.done(function(response){
    $("div.list_reviews").empty().append(response)
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
