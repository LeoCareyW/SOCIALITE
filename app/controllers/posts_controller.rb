class PostsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @group = Group.find(params[:group_id])
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @group = Group.find(params[:group_id])
    @post.group = @group
    @post.user = current_user
    if @post.save
      redirect_to group_path(@group, anchor: "review-#{@group.id}")
    else
      render 'groups/show'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to group_path(@post.group)
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
