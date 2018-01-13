class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find(params[:id])
    @city = City.find(params[:city_id])
  end
end
