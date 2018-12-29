//js object model
class Restaurant{
  constructor(obj){
    this.id = obj.id
    this.name = obj.name
    this.city = obj.city
    this.cuisine = obj.cuisine
  }
}

//can render form with button and custom function
Restaurant.prototype.restaurantHTML = function (){
  return (`<h5><a href='restaurants/${this.id}'>${this.name}</a></h5>`)
}