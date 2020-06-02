class ChatroomsController < ApplicationController

  def show
    @chatroom_side = Chatroom.find(params[:id])
    @message = Message.new
    @chatroom_user = ChatroomUser.new
    @chatrooms = Chatroom.joins(:chatroom_users).where(chatroom_users: { user_id: current_user.id })
    @user = current_user
    @chatroom = Chatroom.new
  end

  def index
    @chatrooms = Chatroom.joins(:chatroom_users).where(chatroom_users: { user_id: current_user.id })
    @user = current_user
    @chatroom = Chatroom.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      ChatroomUser.create(user: current_user, chatroom: @chatroom)
      flash[:success] = "Room #{@chatroom.name} was created successfully"
      redirect_to chatrooms_path(@chatroom)
    else
      render :new
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end

end
