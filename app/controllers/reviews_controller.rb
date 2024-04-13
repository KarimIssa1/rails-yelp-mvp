class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant), notice: 'Review added successfully.'
    else
      @reviews = @restaurant.reviews.reload
      flash.now[:alert] = 'Failed to add review. Please check the form for errors.'
      render 'restaurants/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
