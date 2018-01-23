# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
  -> city has_many restaurants, cuisine has_many restaurants, restaurant has_many reviews, user has_many reviews
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
  -> restaurant belongs_to cuisine, restaurant belongs_to city, review belongs_to user, review belongs_to restaurant
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
  -> city has_many cuisines through restaurants, cuisine has_many cities through restaurants, restaurant has_many users through reviews, user has_many restaurants through reviews
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
  -> reviews are user submittable
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  -> City, Cuisine, Restaurant, Review have validations (User validations are automated through Devise)
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
  -> User.from_omniauth(auth)
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
  -> /restaurants/new, Cuisine & City
- [x] Include signup (how e.g. Devise)
  -> Devise
- [x] Include login (how e.g. Devise)
  -> Devise
- [x] Include logout (how e.g. Devise)
  -> Devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
  -> OmniAuth
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
  -> /cities/:id/cuisines/:id
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
  -> /restaurants/:id/reviews/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
  -> /restaurants/:id/reviews/new & validation_errors partial

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
