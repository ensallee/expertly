class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @ratings = [1, 2, 3, 4, 5]
  end

  def create
    @review = Review.create(review_params)
    @user = User.find(review_params[:user_id])
    if @review.valid?
      redirect_to @user
    else
      flash[:errors] = @review.errors.full_messages
      redirect_to new_error_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :content, :rating)
  end
end
