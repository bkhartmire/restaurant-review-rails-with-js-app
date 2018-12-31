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

  def edit
    @review = Review.find_by(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:review][:restaurant_id])
    @review = Review.find(params[:id])
    edited_review = Review.new(review_params)
    edited_review.user = current_user
      if edited_review.valid?
        @review.update(review_params)
        redirect_to restaurant_path(@review.restaurant_id), notice: "Review successfully edited."
      else
        @review.destroy
        @review = edited_review
        render :edit
      end
  end

  def destroy
    review = Review.find_by(params[:id])
    review.destroy
    redirect_to user_path(current_user), message: 'Review successfully deleted.'
  end

  private
  def review_params
    params.require(:review).permit(:restaurant_id, :rating, :content)
  end

end
