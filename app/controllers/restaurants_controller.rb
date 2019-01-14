class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all.sort_by{|restaurant| restaurant.name}
    render json: @restaurants
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    respond_to do |f|
      f.html {render 'restaurants/show'}
      f.json {render json: @restaurant}
    end
  end

end
