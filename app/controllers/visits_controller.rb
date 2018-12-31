class VisitsController < ApplicationController
  def new
    @visit = Visit.new
  end

  def create
    visit = Visit.create(user_id: current_user.id, restaurant_id: params[:restaurant])
    redirect_to user_path(current_user)
  end
end
