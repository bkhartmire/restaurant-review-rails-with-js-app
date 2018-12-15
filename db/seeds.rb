# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cuisines = Cuisine.create([{name: 'Belgian'}, {name: 'Western'}, {name: 'Scandinavian'}, {name: 'French'}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}, {name: ''}])

countries = Country.create([{name: 'Japan'}, {name: 'France'}, {name: 'United States'}, {name: 'Spain'}, {name: 'Germany'}, {name: 'Hong Kong'}, {name: 'Macau'}, {name: 'Italy'}, {name: 'United Kingdom'}, {name: 'Netherlands'}, {name: 'Switzerland'}, {name: 'Belgium'}, {name: 'China'}, {name: 'Denmark'}, {name: 'Monaco'}, {name: 'Norway'}, {name: 'South Korea'}, {name: 'Sweden'}, {name: 'Taiwan'}])

cities = City.create([{name: 'Kruishoutem', country_id: Country.find_by(name: 'Belgium').id},
  {name: 'Shanghai', country_id: Country.find_by(name: 'China').id},
  {name: 'Copenhagen', country_id: Country.find_by(name: 'Denmark').id},
  {name: 'Chagny', country_id: Country.find_by(name: 'France').id},
  {name: 'Collonges-au-Mont-d\'Or', country_id: Country.find_by(name: 'France').id},
  {name: 'Courchevel', country_id: Country.find_by(name: 'France').id},
  {name: 'Eugénie-les-Bains', country_id: Country.find_by(name: 'France').id},
  {name: 'Fontjoncouse', country_id: Country.find_by(name: 'France').id},
  {name: '', country_id: Country.find_by(name: '').id},
  {name: '', country_id: Country.find_by(name: '').id},
  {name: '', country_id: Country.find_by(name: '').id},
  {name: '', country_id: Country.find_by(name: '').id},
  {name: '', country_id: Country.find_by(name: '').id},
  {name: '', country_id: Country.find_by(name: '').id},
  {name: '', country_id: Country.find_by(name: '').id},])

restaurants = Restaurant.create([
    {name: 'Hof van Cleve', city_id: City.find_by(name: 'Kruishoutem').id , cuisine_id: Cuisine.find_by(name: 'Belgian').id, website_url: "https://www.hofvancleve.com/en/"},
    {name: 'Ultraviolet', city_id: City.find_by(name: 'Shanghai').id , cuisine_id: Cuisine.find_by(name: 'Western').id, website_url: "https://uvbypp.cc/"},
    {name: 'Geranium', city_id: City.find_by(name: 'Copenhagen').id , cuisine_id: Cuisine.find_by(name: 'Scandinavian').id, website_url: "http://www.geranium.dk/"},
    {name: 'Maison Lameloise', city_id: City.find_by(name: 'Chagny').id , cuisine_id: Cuisine.find_by(name: 'French').id, website_url: "https://www.lameloise.fr/en/"},
    {name: 'L\'Auberge du Pont de Collonges', city_id: City.find_by(name: 'Collonges-au-Mont-d\'Or').id , cuisine_id: Cuisine.find_by(name: 'French').id, website_url: "https://www.bocuse.fr/fr/"},
    {name: 'Le 1947 at Cheval Blanc	', city_id: City.find_by(name: 'Courchevel').id , cuisine_id: Cuisine.find_by(name: 'French').id, website_url: "https://www.chevalblanc.com/courchevel/en/culinary-art/le-1947-cheval-blanc.html"},
    {name: 'Les Prés d\'Eugénie', city_id: City.find_by(name: 'Eugénie-les-Bains').id , cuisine_id: Cuisine.find_by(name: 'French').id, website_url: "https://lespresdeugenie.com/"},
    {name: 'L\'Auberge du Vieux Puits', city_id: City.find_by(name: 'Fontjoncouse').id , cuisine_id: Cuisine.find_by(name: 'French').id, website_url: "https://www.aubergeduvieuxpuits.fr/fr/"},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
    {name: '', city_id: City.find_by(name: '').id , cuisine_id: Cuisine.find_by(name: '').id, website_url: ""},
  ])

counter = 1
8.times do
  User.create(email: "user#{counter}@email.com", password: "password")
  counter += 1
end

User.create(email: "admin@email.com", password: "password", admin: true)
