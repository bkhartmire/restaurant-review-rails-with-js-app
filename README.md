# README
Users:
  -name, email, password
  -has many reviews
  -has many restaurants, through reviews
Restaurants:
  -city, name, cuisine
  -has many reviews
  -has many users, through reviews
  -belongs to a city
  -belongs to a cuisine (must select from checkbox, seed data)
Cuisine:
  -has_many restaurants
  -name
Reviews:
  -rating(1-5), content(optional)
  -belongs to user
  -belongs to restaurant
  -(join table for users/restaurants)
City:
  -name
  -has many restaurants

Views/Welcome/Home:
  -Sign Up, Log In (allow facebook login with OmniAuth), Sign Out
  -Provides Categories by City(link_to city_path(city))
    --> Lists all restaurants in that city by cuisine
    --> Provides link to add new restaurant (must be logged in)
Views/Users:
  -show all User reviews of all restaurants(link to restaurant)
  -can add new restaurant listing(must be logged in)
Views/Restaurants:
  -give average rating at top
  -list all reviews (link to user)
  -can add review (must be logged in)
