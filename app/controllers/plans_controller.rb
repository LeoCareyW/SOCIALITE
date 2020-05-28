class PlansController < ApplicationController

  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find(params[:id])
    @place = @plan.place
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @user = current_user
    @plan.user = @user
    @place = Place.find(params[:place_id])
    @plan.place = @place
    unless params[:plan][:group].empty?
    @plan.group = Group.find(params[:plan][:group])
    end
    unless params[:plan][:friend_id].empty?
    @plan.friend = User.find(params[:plan][:friend_id])
    end
    if @plan.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :date, :group_id)
  end


end
