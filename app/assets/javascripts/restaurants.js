//js object model
class Restaurant{
  constructor(obj){
    this.id = obj.id
    this.name = obj.name
    this.city = obj.city
    this.country = obj.country
    this.cuisine = obj.cuisine
  }
}

//can render form with button and custom function
Restaurant.prototype.restaurantHTML = function (){
  if (this.city.name !== restaurant.city.country.name) {
    return (`
      <h3><a href='restaurants/${this.id}'>${this.name}</a></h3>
      <p>${this.city.name}, ${this.country.name}</p><br>`)
  } else {
    return (`<h3><a href='restaurants/${this.id}'>${this.name}</a></h3>
    <p>${this.city.name}</p><br>`)
  }
}
