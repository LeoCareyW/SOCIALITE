class PlacesController < ApplicationController

  def show
    @place = Place.find(params[:id])
    # @review = Review.new
  end

end
