$(document).ready(function() {
  //why isn't jquery selector working? $("#browse_bar")[0] no method error
  //($('#browse_bar')[0]).on('change', browseSorter(), false)
  if (document.getElementById('browse_bar')) {
    document.getElementById('browse_bar').addEventListener('change', () => browseSorter(), false)
  }
})

function browseSorter() {
  var browseValue = document.getElementById('browse_bar').value;
  let req = $.get(browseValue + '.json')
  req.done(function(response){

    $("#display_list").empty()
    let i = 1
    switch (browseValue) {
      case 'countriesAZ':
        response.forEach(country => {
          let newCountry = new Country(country)
          let newCountryHTML = newCountry.countryHTML(i)
          $("#display_list").append(newCountryHTML)
          i += 1
        })
        break
    }
    addListener()
  })
}

function addListener() {
  categoryCollection = document.getElementsByClassName("category_item")//
    for(var i = 0; i < categoryCollection.length - 1; i++){
      categoryCollection[i].addEventListener("click", function(e){
        var self = this
        listRestaurants(e, self)
      }, false)
    }
  }

function listRestaurants(e, self) {
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
