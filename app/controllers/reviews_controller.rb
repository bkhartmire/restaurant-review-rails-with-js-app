class ReviewsController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    render json: @restaurant.reviews
  end

  def show
    @review = Review.find(params[:id])
    render json: @review
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(restaurant_id: params[:restaurant_id])
    render layout: false
  end

  def create
    @restaurant = Restaurant.find(params[:review][:restaurant_id])
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.valid?
      @review.save
      redirect_to restaurant_review_path(@restaurant, @review), layout: false
    else
      render :new
    end
  end
  

  private
  def review_params
    params.require(:review).permit(:restaurant_id, :rating, :content)
  end

end
