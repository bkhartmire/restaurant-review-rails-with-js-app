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

  if (document.getElementById('list_reviews')) {
    $('a#list_reviews')[0].addEventListener('click', function(e) {
      let self = this
      listReviews(e, self)
    })
  }
})

class Review{
  constructor(obj){
    this.id = obj.id
    this.rating = obj.rating
    this.user = obj.user.email
    this.content = obj.content
  }
}

//can render form with button and custom function
Review.prototype.reviewHTML = function (){
  return (`
    <li>${this.user}: ${this.rating} Stars
      <p>${this.content}</p>
    </li>
    `)
}

function listReviews(e, self) {
  e.preventDefault()
  let req = $.get(self.href + '.json')
  req.done(function(response){
    response.forEach(review => {
      let newReview = new Review(review)
      let newReviewHTML = newReview.reviewHTML()
      $("div.list_reviews").append(newReviewHTML)
    })
  })
  self.innerHTML = ""
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
