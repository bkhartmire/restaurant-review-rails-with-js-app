class CitiesController < ApplicationController
  def sortAZ
    @cities = City.all
    render 'cities/index', layout: false
  end

  def sortMost
    render 'cities/index', layout: false
  end

  def show
    @city = City.find_by(id: params[:id])
    @restaurants = @city.restaurants.sort_by{ |restaurant| restaurant.average_rating }.reverse
  end
end
