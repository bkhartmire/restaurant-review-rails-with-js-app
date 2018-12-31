class CountriesController < ApplicationController
  def sortAZ
    @countries = Country.all.sort_by{|country| country.name}
    respond_to do |f|
      f.html {render 'countries/index', layout: false}
      f.json {render json: @countries}
    end
  end

  def sortMost
    @countries = Country.all.sort_by{|country| country.restaurants.count}.reverse
    respond_to do |f|
      f.html {render 'countries/index', layout: false}
      f.json {render json: @countries}
    end
  end

  def show
    @country = Country.find(params[:id])
    respond_to do |f|
      f.html {render 'countries/show', layout: false}
      f.json {render json: @country}
    end
  end
end
