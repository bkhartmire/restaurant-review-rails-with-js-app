class VisitsController < ApplicationController
  def new
    @visit = Visit.new
  end

  def create
    #raise params.inspect
    visit = Visit.create
    visit.user_id = current_user.id
    visit.restaurant_id = params[:restaurant]
    visit.save
    redirect_to user_path(current_user)
  end

  #private

  #def visit_params
  #  params.require(:visit).permit(:restaurant_id, :user_id)
  #end
end
