class UsersController < ApplicationController
  def show
    @restaurants = Restaurant.all
  end
end
