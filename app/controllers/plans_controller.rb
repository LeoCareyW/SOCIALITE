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
    @plan.group = Group.find(params[:plan][:group])
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
