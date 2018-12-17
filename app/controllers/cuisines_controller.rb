class CuisinesController < ApplicationController
  def index
    @cuisines = Cuisine.all
    render 'cuisines/index', layout: false
  end
  
  def show
    @cuisine = Cuisine.find(params[:id])
    @city = City.find(params[:city_id])
    all_restaurants = @city.restaurants.sort_by{ |restaurant| restaurant.average_rating }.reverse
    @restaurants = all_restaurants.select{|restaurant| restaurant.cuisine_id == @cuisine.id}
  end
end
