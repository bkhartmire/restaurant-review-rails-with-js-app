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
    {name: 'Cal Mare', price_range: '$$$', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Italian').id},
    {name: 'In-N-Out', price_range: '$', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Fast Food').id},
    {name: 'Guisados', price_range: '$', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Mexican').id},
    {name: 'Inko Nito', price_range: '$$', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: 'Katz\'s Delicatessen', price_range: '$$', city_id: City.find_by(name: 'New York City').id , cuisine_id: Cuisine.find_by(name: 'Fast Food').id},
    {name: 'ABC Kitchen', price_range: '$$$', city_id: City.find_by(name: 'New York City').id , cuisine_id: Cuisine.find_by(name: 'New American').id},
    {name: 'Balthazar', price_range: '$$$', city_id: City.find_by(name: 'New York City').id , cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Di Fara', price_range: '$$', city_id: City.find_by(name: 'New York City').id , cuisine_id: Cuisine.find_by(name: 'Italian').id},
    {name: 'Gray\'s Papaya', price_range: '$', city_id: City.find_by(name: 'New York City').id , cuisine_id: Cuisine.find_by(name: 'Fast Food').id},
    {name: 'Quimet i Quimet', price_range: '$$', city_id: City.find_by(name: 'Barcelona').id , cuisine_id: Cuisine.find_by(name: 'Tapas').id},
    {name: 'La Esquinica', price_range: '$$', city_id: City.find_by(name: 'Barcelona').id , cuisine_id: Cuisine.find_by(name: 'Tapas').id},
    {name: 'Floreta', price_range: '$$$', city_id: City.find_by(name: 'Barcelona').id , cuisine_id: Cuisine.find_by(name: 'Tapas').id},
    {name: 'Le Cucine Mandarosso', price_range: '$$$', city_id: City.find_by(name: 'Barcelona').id , cuisine_id: Cuisine.find_by(name: 'Italian').id},
    {name: 'PerBacco!', price_range: '$$$', city_id: City.find_by(name: 'Barcelona').id , cuisine_id: Cuisine.find_by(name: 'Italian').id},
    {name: 'Le Baratin', price_range: '$$$', city_id: City.find_by(name: 'Paris').id , cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Les Arlots', price_range: '$$$', city_id: City.find_by(name: 'Paris').id , cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Chez Aline', price_range: '$', city_id: City.find_by(name: 'Paris').id , cuisine_id: Cuisine.find_by(name: 'Fast Food').id},
    {name: 'Les Philosphes', price_range: '$$$', city_id: City.find_by(name: 'Paris').id , cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Raviolis Chinois Nord-Est', price_range: '$', city_id: City.find_by(name: 'Paris').id, cuisine_id: Cuisine.find_by(name: 'Chinese').id},
    {name: 'Kagari', price_range: '$', city_id: City.find_by(name: 'Tokyo').id, cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: 'Nihonryori RyuGin', price_range: '$$$$', city_id: City.find_by(name: 'Tokyo').id, cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: 'Sushi Saito', price_range: '$$$$', city_id: City.find_by(name: 'Tokyo').id, cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: '7-Eleven', price_range: '$', city_id: City.find_by(name: 'Tokyo').id, cuisine_id: Cuisine.find_by(name: 'Fast Food').id},
    {name: 'Nodaiwa', price_range: '$$$$', city_id: City.find_by(name: 'Tokyo').id, cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: 'Caprice', price_range: '$$$$', city_id: City.find_by(name: 'Hong Kong').id, cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Lung King Heen', price_range: '$$$$', city_id: City.find_by(name: 'Hong Kong').id, cuisine_id: Cuisine.find_by(name: 'Cantonese').id},
    {name: 'Xi Yan Hong Kong', price_range: '$$$$', city_id: City.find_by(name: 'Hong Kong').id, cuisine_id: Cuisine.find_by(name: 'Chinese').id},
    {name: 'Jumbo Kingdom', price_range: '$$', city_id: City.find_by(name: 'Hong Kong').id, cuisine_id: Cuisine.find_by(name: 'Chinese').id},
    {name: 'Yan Toh Heen', price_range: '$$$$', city_id: City.find_by(name: 'Hong Kong').id, cuisine_id: Cuisine.find_by(name: 'Cantonese').id},
    {name: 'Pujol', price_range: '$$$$', city_id: City.find_by(name: 'Mexico City').id, cuisine_id: Cuisine.find_by(name: 'Mexican').id},
    {name: 'Azul Historico', price_range: '$$$$', city_id: City.find_by(name: 'Mexico City').id, cuisine_id: Cuisine.find_by(name: 'Mexican').id},
    {name: 'Suntory Del Valle', price_range: '$$$$', city_id: City.find_by(name: 'Mexico City').id, cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: 'Au Pied de Cochon', price_range: '$$$$', city_id: City.find_by(name: 'Mexico City').id, cuisine_id: Cuisine.find_by(name: 'French').id},
    {name: 'Dulce Patria', price_range: '$$$$', city_id: City.find_by(name: 'Mexico City').id, cuisine_id: Cuisine.find_by(name: 'Mexican').id}
  ])

counter = 1
8.times do
  User.create(email: "user#{counter}@email.com", password: "password")
  counter += 1
end

User.create(email: "admin@email.com", password: "password", admin: true)
