class CountriesController < ApplicationController
  def sortAZ
    @countries = Country.all.sort_by{|country| country.name}
    #render 'countries/index', layout: false
    respond_to do |f|
      f.html {render 'countries/index', layout: false}
      f.json {render json: @countries}
    end
  end

  def sortMost
    @countries = Country.all.sort_by{|country| country.restaurants.count}.reverse
    render 'countries/index', layout: false
  end

  def show
    @country = Country.find(params[:id])
    render 'countries/show', layout: false
  end
end
