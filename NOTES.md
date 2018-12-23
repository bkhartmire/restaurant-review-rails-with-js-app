-users will need to maintain a visted_restuarants array


-adding event listeners in .js file isn't working? :( ".on is not a function")
 ->.addEventListener works, but not .on
-why does this = the window and not the a#reviews_button element???
  ->having to redeclare elements inside event function
-manifest file isn't loading other js files :(((


-only admin users should be able to add a new restaurant
-fix Omniauth feature (deleted fb)
  --> google?

-change it to a Michelin 3-Star restaurants website
-user profile page should include checklist of restaurants you've visited
-upon checking item off list, user should be prompted to write a review for the restaurant
-*** user can view all reviews but CANNOT write a review unless they've visited it
-on restuarant #show page, include link to restaurant website
-Home page should be able to browse by country, or All 3 star restaurants (add sub categories to sort by)


-Must render at least one index page (index resource - 'list of things') via JavaScript and an Active Model Serialization JSON Backend.
  ->click on button in restaurant show page to list all reviews
  ->click on button in citylist all
  ->on city show page, restaurants will be sorted by 1, 2, or 3 Michelin stars. Should be able to sort sub-cateogries by cuisine, user rating, or alphabetically.

-Must render at least one show page (show resource - 'one specific thing') via JavaScript and an Active Model Serialization JSON Backend.
  ->In a restuarant show page, have next button to load following restaurant in a city/country/cuisine

-Your Rails application must dynamically render on the page at least one 'has-many' relationship through JSON using JavaScript.
  ->restaurant has_many reviews, city has_many cuisines
