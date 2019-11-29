class ChatRoomsController < ApplicationController
  def create
    @sender = User.find(params[:sender_id])
    @receiver = User.find(params[:receiver_id])
    @message = Message.create!(
      sender: @sender,
      receiver: @receiver,
      chat_room: ChatRoom.create!,
      content: "🐶"
    )
    @chat_room = @message.chat_room
    redirect_to chat_room_path(@chat_room)
  end

  def show
    @chat_room = ChatRoom.find(params[:id])
  end
end
