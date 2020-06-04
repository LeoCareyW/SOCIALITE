class UsersController < ApplicationController
  def index
    if params[:search].present? && params[:search][:query].present?
      @friends = current_user.friends
      @users = User.where("name ILIKE ?", "%#{params[:search][:query]}%") - @friends
    else
      @friends = current_user.friends
      @users = User.all - @friends
    end
    # friends = current_user.friendships.map { |friendship| friendship.friend }
    # @users = friends + @users
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

  def feed
    @user = current_user

    if @user.friends.empty?
    else
      @friends = @user.friends
    end

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
