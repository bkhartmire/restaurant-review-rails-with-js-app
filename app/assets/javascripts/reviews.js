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
  generalReviewHTML(){
    return (`
      <li>${this.user}: ${this.rating} Stars
        <p>${this.content}</p>
      </li>
      `)
  }
}

//reviews on restaurant#show
//Review.prototype.generalReviewHTML = function (){
//  return (`
//    <li>${this.user}: ${this.rating} Stars
//      <p>${this.content}</p>
//    </li>
//    `)
//}

//reviews on user profile
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
  let custom_class = self.classList[1]
  let req = $.get(self.href)
  req.done(function(response){
    $(`div.${custom_class}`).empty().append(response)
    addFormListener()
  })

}

function addFormListener() {
  formCollection = document.getElementsByClassName('new_review')
  for(var i = 0; i < formCollection.length; i++){
    formCollection[i].addEventListener("submit", function(e, custom_class){

      e.preventDefault()
      var values = $(this).serialize()
      review = $.ajax({
        type: "POST",
        url: this.action,
        data: values,
        success: function(result){console.log(result)},
        dataType: "json",
        error: function(error){console.log('Something went wrong.', error)}
      })
      review.done(function(data){
        console.log('Hello')
        $('h3.reviewRating').append(data["rating"] + ' Stars')
        $('h4.reviewContent').append(data["content"])
        $('form.new_review').empty()
      })
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
