//js object model
class Country{
  constructor(obj){
    this.id = obj.id
    this.name = obj.name
    this.cities = obj.cities
    this.restaurants = obj.restaurants
  }
}

//can render form with button and custom function
Country.prototype.countryHTML = function (i){
  return (`
    <h3><a class='category_item list_restaurants_${i}' href='countries/${this.id}'>${this.name}</a> (${this.restaurants.length})</h3>
    <div class='list_restaurants_${i}'></div>
    `)
}
