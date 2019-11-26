class ChatRoomsController < ApplicationController
  def show
    ChatRoom.create
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
    render :show
  end
end
