class WelcomeController < ApplicationController
  def home
    @cities = City.all.sort_by{ |city| city.name }
  end
end
