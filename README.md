Description: This app provides a platform to research and review restaurants across the globe! Any user may browse restaurants by city and cuisine, but a user must have an account and be logged in order to add a new review or restaurant listing. The cities and cuisines listed are limited to those of the existing restaurants in the database, but additional cities and cuisines may be created upon the addition of a new restaurant listing. Users cannot have multiple reviews for the same restaurant, but they may edit or delete their previous reviews. Once a restaurant listing is created, only users with an administrative account may remove the listing. Enjoy!

Instructions: Simply fork, clone, and run bundle install! Adjust the database seeds as you wish and run rake db:seed. If upon launching your rails server, you receive an error that says 'Address already in use', follow these instructions:
  1. run lsof -wni tcp:[port address]
  2. output should inform on the PID numbers
  3. kill -9 [PID number]
  4. now try launching the server again :-)

To Do:
Contributors' Guide:
Mit Open Source License (add file)
