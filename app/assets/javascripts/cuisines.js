//js object model
class Cuisine{
  constructor(obj){
    this.id = obj.id
    this.name = obj.name
    this.restaurants = obj.restaurants
  }
}

//can render form with button and custom function
Cuisine.prototype.cuisineHTML = function (i){
  return (`
    <h3><a class='category_item list_restaurants_${i}' href='cuisines/${this.id}'>${this.name}</a> (${this.restaurants.length})</h3>
    <div class='list_restaurants_${i}'></div>
    `)
}
