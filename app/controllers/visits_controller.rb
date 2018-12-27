class VisitsController < ApplicationController
  def new
    @visit = Visit.new
  end

  def create
    #debugger
    visit = Visit.create(params[:current_user, :restaurant_id])
    redirect_to current_user
  end

  #private

  #def visit_params
  #  params.require(:visit).permit(:restaurant_id, :user_id)
  #end
end
