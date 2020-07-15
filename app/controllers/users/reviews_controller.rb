class Users::ReviewsController < ApplicationController
  before_action :logged_in_user

  def create
    @reviews = Review.new review_params
    if @reviews
      @reviews.save
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :product_id, :user_id)
  end
end
