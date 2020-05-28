class RecommendationsController < ApplicationController
  before_action :find_place, only: [:destroy]

  def create
    if already_recommended?
      flash[:notice] = "You can't recommend more than once"
    else
      @recommendation = Recommendation.new
      @recommendation.user = current_user
      @place = Place.find(params[:place_id])
      @recommendation.place = @place
      if @recommendation.save
        redirect_to place_path(@place, anchor: "recommend-")
      else
        flash[:notice] = "Cannot recommend"
        redirect_to place_path(@place)
      end
    end
  end

  def destroy
    @recommendation = Recommendation.find(params[:id])
    if !(already_recommended?)
      flash[:notice] = "Cannot recommend"
    else
      @recommendation.destroy
    end
    redirect_to place_path(@place, anchor: "recommend-")
  end

  def find_recommendation
   @recommendation = @place.recommendations.find(params[:id])
  end

  private


  def find_place
    @place = Place.find(params[:place_id])
  end

  def already_recommended?
    Recommendation.where(user_id: current_user.id, place_id:
    params[:place_id]).exists?
  end

end
