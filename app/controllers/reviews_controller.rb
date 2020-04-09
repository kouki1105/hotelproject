class ReviewsController < ApplicationController
  before_action :authenticate_user!
  def index
    @hotel = Hotel.find(params[:hotel_id])
    @reviews = @hotel.reviews
  end

  def new
    @hotel = Hotel.find(params[:hotel_id])
    @review = @hotel.reviews.build
    @user = current_user
  end

  def create
    @hotel = Hotel.find(params[:hotel_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to hotel_reviews_path(@hotel)
    end
  end

  def show
    @hotel = Hotel.find(params[:hotel_id])
    @review = Review.find(params[:id])
  end

  private
  def review_params
    params.require(:review).permit(:name, :title, :rating, :body, :hotel_id, :user_id)
  end
end
