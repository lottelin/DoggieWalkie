class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @message.chat_room = @chat_room
    @message.sender = current_user
    @message.receiver = @chat_room.messages.last.receiver
    if @message.save
      broadcast_message
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end


  def broadcast_message
    ActionCable.server.broadcast("chat_room_#{@chat_room.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: {
          message: @message,
          user_is_message_sender: true
        }),
        sender_id: @message.sender.id
    })
  end
end
