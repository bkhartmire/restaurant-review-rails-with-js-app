class CuisinesController < ApplicationController
  def sortAZ
    @cuisines = Cuisine.all.sort_by{|cuisine| cuisine.name}
    #render 'cuisines/index', layout: false
    respond_to do |f|
      f.html {render 'cuisines/index', layout: false}
      f.json {render json: @cuisines}
    end
  end

  def sortMost
    @cuisines = Cuisine.all.sort_by{|cuisine| cuisine.restaurants.count}.reverse
    #render 'cuisines/index', layout: false
    respond_to do |f|
      f.html {render 'cuisines/index', layout: false}
      f.json {render json: @cuisines}
    end
  end

  def show
    @cuisine = Cuisine.find(params[:id])
    render 'cuisines/show', layout: false
    #Unsure what this code is doing...do you still need it???
    #all_restaurants = @city.restaurants.sort_by{ |restaurant| restaurant.average_rating }.reverse
    #@restaurants = all_restaurants.select{|restaurant| restaurant.cuisine_id == @cuisine.id}
  end
end
