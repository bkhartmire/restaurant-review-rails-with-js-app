class CitiesController < ApplicationController
  def sortAZ
    @cities = City.all.sort_by{|city| city.name}
    render json: @cities
  end

  def sortMost
    @cities = City.all.sort_by{|city| city.restaurants.count}.reverse
    render json: @cities
  end

  def show
    @city = City.find_by(id: params[:id])
    render json: @city
  end
end
