class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = "Added frienship"
<<<<<<< HEAD
=======
      redirect_to users_path
>>>>>>> a1a01642a33ed4e3bd95b4820accfea47b2e267d
    else
      flash[:error]
    end
  end

  def destroy
    @frienship = current_user.friendships.find(params[:id])
    @frienship.destroy
    flash[:notice] = "Successfully removed friendship"
    redirect_to profile_path
  end
end
