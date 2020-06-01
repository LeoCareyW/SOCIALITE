class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @place = Place.find(params[:place_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @place = Place.find(params[:place_id])
    @review.place = @place
    if @review.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to place_path(@review.place)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end


