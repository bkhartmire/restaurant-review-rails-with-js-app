class CountriesController < ApplicationController
  def sortAZ
    @countries = Country.all.sort_by{|country| country.name}
    render 'countries/index', layout: false
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
