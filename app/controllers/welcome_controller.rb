class WelcomeController < ApplicationController
  def home
    @cuisines = Cuisine.all
    @cities = City.all.sort_by{ |city| city.name }
  end
end
