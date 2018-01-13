# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cuisines = Cuisine.create([{name: 'Japanese'}, {name: 'Chinese'}, {name: 'Korean'}, {name: 'Italian'}, {name: 'French'}, {name: 'New American'}, {name: 'Mexican'}, {name: 'Fast Food'}])

cities = City.create([{name: 'Los Angeles'}, {name: 'New York'}, {name: 'Barcelona'}, {name: 'London'}, {name: 'Paris'}, {name: 'Tokyo'}, {name: 'Hong Kong'}, {name: 'Mexico City'}, {name: 'Cape Town'}, {name: 'Melbourne'}])

restaurants = Restaurant.create([
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '')}
  ])
