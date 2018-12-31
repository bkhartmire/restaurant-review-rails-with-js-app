class CuisinesController < ApplicationController
  def sortAZ
    @cuisines = Cuisine.all.sort_by{|cuisine| cuisine.name}
    render json: @cuisines
  end

  def sortMost
    @cuisines = Cuisine.all.sort_by{|cuisine| cuisine.restaurants.count}.reverse
    render json: @cuisines
  end

  def show
    @cuisine = Cuisine.find(params[:id])
    render json: @cuisine
  end
end
