require 'pry'

class VisitsController < ApplicationController
  def new
    @visit = Visit.new
  end

  def create
    visit = Visit.create
    visit.user_id = current_user.id
    binding.pry
    visit.restaurant_id = params[:restaurant_id]    redirect_to current_user
  end

  #private

  #def visit_params
  #  params.require(:visit).permit(:restaurant_id, :user_id)
  #end
end
