class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    render 'restaurants/index', layout: false
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.valid? && @restaurant.cuisine.valid? && @restaurant.city.valid?
      @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: 'New listing added!'
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    redirect_to root_path, notice: "#{restaurant.name} has successfully been deleted."
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :price_range, :city_name, :cuisine_name)
  end
end
