class Restaurant{
  constructor(obj){
    this.id = obj.id
    this.name = obj.name
    this.city = obj.city
    this.cuisine = obj.cuisine
  }
}

Restaurant.prototype.restaurantHTML = function (){
  return (`<h5><a href='restaurants/${this.id}'>${this.name}</a></h5>`)
}
