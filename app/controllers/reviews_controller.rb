class ReviewsController < ApplicationController
  def new
    @review = Review.new(restaurant_id: params[:restaurant_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.create(review_params)

    @review.update(user_id: current_user.id)
    redirect_to restaurant_path(@review.restaurant_id)
  end

  private
  def review_params
    params.require(:review).permit(:restaurant_id, :rating, :content)
  end
end
