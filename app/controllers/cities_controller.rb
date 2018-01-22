class CitiesController < ApplicationController
  def show
    @city = City.find_by(id: params[:id])
    @restaurants = @city.restaurants.sort_by{ |restaurant| restaurant.average_rating }.reverse
  end
end
