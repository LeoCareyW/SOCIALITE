class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = "Added frienship"
    else
      flash[:error]
    end
  end

  def destroy
    @frienship = current_user.friendships.find(params[:id])
    @frienship.destroy
    flash[:notice] = "Successfully removed friendship"
    redirect_to root_url
  end
end
