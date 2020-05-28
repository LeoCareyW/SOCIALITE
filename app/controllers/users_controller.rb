class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # @recommendations = Recommendation.where(user: @user)
  end

  def profile
    # @recommendations = Recommendation.joins(:users).where(users: current_user)
    @user = current_user
    @recommendations = Recommendation.where(user_id: current_user)
  end

  def new
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    if @user.save
      redirect_to profile_path
    else
      redirect_to profile_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
