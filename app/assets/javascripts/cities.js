//js object model
class City{
  constructor(obj){
    this.id = obj.id
    this.name = obj.name
    this.country = obj.country
    this.restaurants = obj.restaurants
  }
}

//can render form with button and custom function
City.prototype.cityHTML = function (i){
  return (`
    <h3><a class='category_item list_restaurants_${i}' href='cities/${this.id}'>${this.name}</a> (${this.restaurants.length})</h3>
    <div class='list_restaurants_${i}'></div>
    `)
}
