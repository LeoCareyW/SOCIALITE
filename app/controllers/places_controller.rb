class PlacesController < ApplicationController


  def show
    @place = Place.find(params[:id])
    # @review = Review.new
  end

  def index
    @places = Place.all
  end

end
