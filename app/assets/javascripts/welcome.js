$(document).ready(function() {
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
      case 'countriesMost':
        response.forEach(country => {
          let newCountry = new Country(country)
          let newCountryHTML = newCountry.countryHTML(i)
          $("#display_list").append(newCountryHTML)
          i += 1
        })
        break
      case 'citiesAZ':
      case 'citiesMost':
        response.forEach(city => {
          let newCity = new City(city)
          let newCityHTML = newCity.cityHTML(i)
          $("#display_list").append(newCityHTML)
          i += 1
        })
        break
      case 'cuisinesAZ':
      case 'cuisinesMost':
        response.forEach(cuisine => {
          let newCuisine = new Cuisine(cuisine)
          let newCuisineHTML = newCuisine.cuisineHTML(i)
          $("#display_list").append(newCuisineHTML)
          i += 1
        })
        break
      case 'restaurantsAZ':
        response.forEach(restaurant => {
          let newRestaurant = new Restaurant(restaurant)
          let newRestaurantHTML = newRestaurant.restaurantHTML()
          $("#display_list").append(newRestaurantHTML)
        })
    }
    addListener()
  })
}

function addListener() {
  categoryCollection = document.getElementsByClassName("category_item")//
    for(var i = 0; i < categoryCollection.length; i++){
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
    let req = $.get(self.href + '.json')
    req.done(function(response){
      response.restaurants.forEach(restaurant => {
        let newRestaurant = new Restaurant(restaurant)
        let newRestaurantHTML = newRestaurant.restaurantHTML()
        div.append(newRestaurantHTML)
      })
    })
  } else {
    div.empty()
  }
}
