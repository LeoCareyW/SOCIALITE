class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @recommendations = Recommendation.where(user: @user)
  end

  def profile
    # @recommendations = Recommendation.joins(:users).where(users: current_user)
    @recommendations = Recommendation.where(user_id: current_user)
  end
end
