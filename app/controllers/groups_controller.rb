class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    # @plans = @group.plans
    @plans = Plan.where(group: @group)
    @members = @group.users

  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.users << current_user
    if @group.save
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end




end
