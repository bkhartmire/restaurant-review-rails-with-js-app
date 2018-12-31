class CountriesController < ApplicationController
  def sortAZ
    @countries = Country.all.sort_by{|country| country.name}
    render json: @countries
  end

  def sortMost
    @countries = Country.all.sort_by{|country| country.restaurants.count}.reverse
    render json: @countries
  end

  def show
    @country = Country.find(params[:id])
    render json: @country
  end
end
