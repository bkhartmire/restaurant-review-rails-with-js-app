class WelcomeController < ApplicationController
  def home
    @cuisines = Cuisine.all
  end
end
