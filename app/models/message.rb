class Message < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user
  validates :content, presence: true, allow_blank: false
  after_create :broadcast_message

  # def self.first_between(user_a, user_b)
  #   self.where(
  #     '(receiver_id = :user_a AND sender_id = :user_b) OR (sender_id = :user_a AND receiver_id = :user_b)',
  #     user_a: user_a.id,
  #     user_b: user_b.id
  #   ).first
  # end

  def from?(some_user)
    sender == some_user
  end

  def broadcast_message
    ActionCable.server.broadcast("chat_room_#{chat_room.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: { message: self, user_is_messages_author: false }),
      current_user_id: user.id
    })
  end
end
