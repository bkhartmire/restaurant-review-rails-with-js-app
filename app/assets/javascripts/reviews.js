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
Review.prototype.generalReviewHTML = function (){
  return (`
    <li>${this.user}: ${this.rating} Stars
      <p>${this.content}</p>
    </li>
    `)
}

Review.prototype.personalReviewHTML = function (){
  return (`
    <h3>${this.rating} Stars</h3>
    <h4>${this.content}</h4>
    `)
}

function listReviews(e, self) {
  e.preventDefault()
  let req = $.get(self.href + '.json')
  req.done(function(response){
    response.forEach(review => {
      let newReview = new Review(review)
      let newReviewHTML = newReview.generalReviewHTML()
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
    addFormListener()
  })

}

function addFormListener() {
  formCollection = document.getElementsByClassName('new_review')
  for(var i = 0; i < formCollection.length; i++){
    formCollection[i].addEventListener("submit", function(e){
      e.preventDefault()
      alert("YAY YOU HIJACKED THIS FORM")
      debugger
      var values = $(this).serialize();
      var review = $.post(this.action, values)
    })
  }
}

function seeReview(e, self) {
  e.preventDefault()
  let div = $('div.' + self.classList[1])
  if (div.html() === "") {
    let req = $.get(self.href + '.json')
    req.done(function(response){
      let newReview = new Review(response)
      let newReviewHTML = newReview.personalReviewHTML()
      div.append(newReviewHTML)
    })
  } else {
    div.empty()
  }
}
