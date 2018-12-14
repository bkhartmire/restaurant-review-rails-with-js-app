Restaurant Table:
(belongs_to city, country, cuisine)
name
city_id
country_id
cuisine_id

City Table:
(belongs_to country)
(has_many restaurants, cuisines)
name
country_id

Country Table:
(has_many cities, restaurants, cuisines)
name

Cuisine Table:
(has_many restaurants)
-name

-fix Omniauth (deleted fb)
  --> yelp or foursquare instead?

-change it to a Michelin 3-Star restaurants website
-user profile page should include checklist of restaurants you've visited
-upon checking item off list, user should be prompted to write a review for the restaurant
-add country category.
-on restuarant show page, include link to restaurant website
-Home page should be able to browse by country, or All 3 star restaurants (add sub categories to sort by)


-Must render at least one index page (index resource - 'list of things') via JavaScript and an Active Model Serialization JSON Backend.
  ->click on button in restaurant show page to list all reviews
  ->click on button in citylist all
  ->on city show page, restaurants will be sorted by 1, 2, or 3 Michelin stars. Should be able to sort sub-cateogries by price, cuisine, user rating, or alphabetically.

-Must render at least one show page (show resource - 'one specific thing') via JavaScript and an Active Model Serialization JSON Backend.
  ->In a restuarant show page, have next button to load following restaurant in a city

-Your Rails application must dynamically render on the page at least one 'has-many' relationship through JSON using JavaScript.
  ->restaurant has_many reviews, city has_many cuisines
