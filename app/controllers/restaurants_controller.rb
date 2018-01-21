class RestaurantsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end 

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
