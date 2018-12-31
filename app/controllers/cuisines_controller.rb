class CuisinesController < ApplicationController
  def sortAZ
    @cuisines = Cuisine.all.sort_by{|cuisine| cuisine.name}
    respond_to do |f|
      f.html {render 'cuisines/index', layout: false}
      f.json {render json: @cuisines}
    end
  end

  def sortMost
    @cuisines = Cuisine.all.sort_by{|cuisine| cuisine.restaurants.count}.reverse
    respond_to do |f|
      f.html {render 'cuisines/index', layout: false}
      f.json {render json: @cuisines}
    end
  end

  def show
    @cuisine = Cuisine.find(params[:id])
    respond_to do |f|
      f.html {render 'cuisines/show', layout: false}
      f.json {render json: @cuisine}
    end
  end
end
