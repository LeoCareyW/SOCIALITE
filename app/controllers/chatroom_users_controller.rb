class ChatroomUsersController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @chatroom_user = ChatroomUser.new(chatroom_user_params)
    @chatroom_user.chatroom = @chatroom
    if @chatroom_user.save
      redirect_to @chatroom
    else
      render 'chatrooms/show'
    end
  end

  private

  def chatroom_user_params
    params.require(:chatroom_user).permit(:user_id)
  end

end
