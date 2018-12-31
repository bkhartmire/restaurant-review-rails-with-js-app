class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all.sort_by{|restaurant| restaurant.name}
    respond_to do |f|
      f.html {render 'restaurants/index', layout: false}
      f.json {render json: @restaurants}
    end
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
    respond_to do |f|
      f.html {render 'restaurants/show'}
      f.json {render json: @restaurant}
    end
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    redirect_to root_path, notice: "#{restaurant.name} has successfully been deleted."
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :city_name, :cuisine_name)
  end
end
