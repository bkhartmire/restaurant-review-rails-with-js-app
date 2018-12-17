class CitiesController < ApplicationController
  def index
    @cities = City.all
    render 'cities/index', layout: false
  end

  def show
    @city = City.find_by(id: params[:id])
    @restaurants = @city.restaurants.sort_by{ |restaurant| restaurant.average_rating }.reverse
  end
end
