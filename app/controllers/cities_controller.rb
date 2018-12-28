class CitiesController < ApplicationController
  def sortAZ
    @cities = City.all.sort_by{|city| city.name}
    #render 'cities/index', layout: false
    respond_to do |f|
      f.html {render 'cities/index', layout: false}
      f.json {render json: @cities}
    end
  end

  def sortMost
    @cities = City.all.sort_by{|city| city.restaurants.count}.reverse
    #render 'cities/index', layout: false
    respond_to do |f|
      f.html {render 'cities/index', layout: false}
      f.json {render json: @cities}
    end
  end

  def show
    @city = City.find_by(id: params[:id])
    #render 'cities/show', layout: false
    respond_to do |f|
      f.html {render 'cities/show', layout: false}
      f.json {render json: @city}
    end
  end
end
