class WelcomeController < ApplicationController
  def home
    @countries = Country.all.sort_by{ |country| country.name }
  end
end
