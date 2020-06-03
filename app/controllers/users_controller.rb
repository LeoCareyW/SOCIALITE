class UsersController < ApplicationController
  def index
    if params[:query].present?
      if params[:search][:query].present?
        @users = User.seach_by(params[:search][:query])
        else
        @users = User.all
      end
    end
    all_users = User.all
    friends = current_user.friendships.map { |friendship| friendship.friend }
    var = friends + all_users
    @users = []
    var.each do |person|
      if var.count(person) < 2
        @users << person
      end
    end
  end

  def show
    @user = User.find(params[:id])
    # @recommendations = Recommendation.where(user: @user)
  end

  def profile
    # @recommendations = Recommendation.joins(:users).where(users: current_user)
    @user = current_user
    @places = Place.all.sort_by do |place|
      -place.recommendations.count 
    end
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
    params.require(:user).permit(:photo, :name)
  end
end
