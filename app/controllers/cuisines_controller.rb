class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find(params[:id])
    @city = City.find(params[:city_id])
    all_restaurants = @city.restaurants
    @restaurants = all_restaurants.select{|restaurant| restaurant.cuisine_id == @cuisine.id}

  end
end
