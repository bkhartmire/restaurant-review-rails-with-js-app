class CountriesController < ApplicationController
  def index
    @countries = Country.all
    render 'countries/index', layout: false
  end

  def show
  end
end
