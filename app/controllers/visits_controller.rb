class VisitsController < ApplicationController
  def new
  end

  def create
    visit = Vist.create(visit_params)
    redirect_to current_user
  end

  private

  def visit_params
    params.require(:visit).permit(:restaurant_id, :user_id)
  end
end
