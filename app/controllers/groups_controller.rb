class GroupsController < ApplicationController

  def index
    @groups = Group.joins(:memberships).where(memberships: { user_id: current_user })
    @group_new = Group.new
    @friends = current_user.friends
  end

  def show
    @group = Group.find(params[:id])
    # @plans = @group.plans
    @plans = Plan.where(group: @group)
    @members = @group.users
    @post = Post.new
  end

  def create
    @group = Group.new(name: group_params[:name])
    @group.users << current_user
    @group.users << User.find(group_params[:users])
    if @group.save
      redirect_to group_path(@group)
    else
      render :new
    end
  end



  private

  def group_params
    params.require(:group).permit(:name, :users)
  end




end
