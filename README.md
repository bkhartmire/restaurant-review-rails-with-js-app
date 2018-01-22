# README
Users:
  -name, email, password
  -add admin type that can delete listings and all reviews
  -has many reviews
  -has many restaurants, through reviews
Restaurants:
  -city, name, cuisine
  -has many reviews
  -has many users, through reviews
  -belongs to a city
  -belongs to a cuisine (must select from checkbox, seed data)
  -(join table between city & cuisine)
  -***Add Price Level??***
Cuisine:
  -has_many restaurants
  -has_many cities, through restaurants
  -name
Reviews:
  -rating(1-5), content(optional)
  -belongs to user
  -belongs to restaurant
  -(join table for users/restaurants)
City:
  -name
  -has many restaurants
  -has many cuisines, through restaurants

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

  To Do:
  1. Admin User
  2. Input field for name
  3. Add price level for restaurants
