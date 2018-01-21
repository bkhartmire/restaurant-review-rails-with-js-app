# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cuisines = Cuisine.create([{name: 'Japanese'}, {name: 'Chinese'}, {name: 'Korean'}, {name: 'Italian'}, {name: 'French'}, {name: 'New American'}, {name: 'Mexican'}, {name: 'Fast Food'}, {name: 'Tapas'}, {name: 'Cantonese'}])

cities = City.create([{name: 'Los Angeles'}, {name: 'New York City'}, {name: 'Barcelona'}, {name: 'Paris'}, {name: 'Tokyo'}, {name: 'Hong Kong'}, {name: 'Mexico City'}])

restaurants = Restaurant.create([
    {name: 'Cal Mare', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Italian').id},
    {name: 'In-N-Out', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Fast Food').id},
    {name: 'Guisados', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Mexican').id},
    {name: 'Inko Nito', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: 'Katz\'s Delicatessen', city_id: City.find_by(name: 'New York City').id , cuisine_id: Cuisine.find_by(name: 'Fast Food').id},
    {name: 'ABC Kitchen', city_id: City.find_by(name: 'New York City').id , cuisine_id: Cuisine.find_by(name: 'New American').id},
    {name: 'Balthazar', city_id: City.find_by(name: 'New York City').id , cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Di Fara', city_id: City.find_by(name: 'New York City').id , cuisine_id: Cuisine.find_by(name: 'Italian').id},
    {name: 'Gray\'s Papaya', city_id: City.find_by(name: 'New York City').id , cuisine_id: Cuisine.find_by(name: 'Fast Food').id},
    {name: 'Quimet i Quimet', city_id: City.find_by(name: 'Barcelona').id , cuisine_id: Cuisine.find_by(name: 'Tapas').id},
    {name: 'La Esquinica', city_id: City.find_by(name: 'Barcelona').id , cuisine_id: Cuisine.find_by(name: 'Tapas').id},
    {name: 'Floreta', city_id: City.find_by(name: 'Barcelona').id , cuisine_id: Cuisine.find_by(name: 'Tapas').id},
    {name: 'Le Cucine Mandarosso', city_id: City.find_by(name: 'Barcelona').id , cuisine_id: Cuisine.find_by(name: 'Italian').id},
    {name: 'PerBacco!', city_id: City.find_by(name: 'Barcelona').id , cuisine_id: Cuisine.find_by(name: 'Italian').id},
    {name: 'Le Baratin', city_id: City.find_by(name: 'Paris').id , cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Les Arlots', city_id: City.find_by(name: 'Paris').id , cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Chez Aline', city_id: City.find_by(name: 'Paris').id , cuisine_id: Cuisine.find_by(name: 'Fast Food').id},
    {name: 'Les Philosphes', city_id: City.find_by(name: 'Paris').id , cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Raviolis Chinois Nord-Est', city_id: City.find_by(name: 'Paris').id, cuisine_id: Cuisine.find_by(name: 'Chinese').id},
    {name: 'Kagari', city_id: City.find_by(name: 'Tokyo').id, cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: 'RyuGin', city_id: City.find_by(name: 'Tokyo').id, cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: 'Sushi Saito', city_id: City.find_by(name: 'Tokyo').id, cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: '7-Eleven', city_id: City.find_by(name: 'Tokyo').id, cuisine_id: Cuisine.find_by(name: 'Fast Food').id},
    {name: 'Nodaiwa', city_id: City.find_by(name: 'Tokyo').id, cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: 'Caprice', city_id: City.find_by(name: 'Hong Kong').id, cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Lung King Heen', city_id: City.find_by(name: 'Hong Kong').id, cuisine_id: Cuisine.find_by(name: 'Cantonese').id},
    {name: 'Xi Yan Hong Kong', city_id: City.find_by(name: 'Hong Kong').id, cuisine_id: Cuisine.find_by(name: 'Chinese').id},
    {name: 'Jumbo Kingdom', city_id: City.find_by(name: 'Hong Kong').id, cuisine_id: Cuisine.find_by(name: 'Chinese').id},
    {name: 'Yan Toh Heen', city_id: City.find_by(name: 'Hong Kong').id, cuisine_id: Cuisine.find_by(name: 'Cantonese').id},
    {name: 'Pujol', city_id: City.find_by(name: 'Mexico City').id, cuisine_id: Cuisine.find_by(name: 'Mexican').id},
    {name: 'Azul Historico', city_id: City.find_by(name: 'Mexico City').id, cuisine_id: Cuisine.find_by(name: 'Mexican').id},
    {name: 'Suntory Del Valle', city_id: City.find_by(name: 'Mexico City').id, cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: 'Au Pied de Cochon', city_id: City.find_by(name: 'Mexico City').id, cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Dulce Patria', city_id: City.find_by(name: 'Mexico City').id, cuisine_id: Cuisine.find_by(name: 'Mexican').id}
  ])

counter = 1
8.times do
  User.create(email: "user#{counter}@email.com", password: "password")
  counter += 1
end
