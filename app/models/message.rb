class Message < ApplicationRecord
  belongs_to :chat_room
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  validates :content, presence: true, allow_blank: false
  # after_create :broadcast_message

  def self.first_between(user_a, user_b)
    self.where(
      '(receiver_id = :user_a AND sender_id = :user_b) OR (sender_id = :user_a AND receiver_id = :user_b)',
      user_a: user_a.id,
      user_b: user_b.id
    ).first
  end

  def from?(some_user)
    sender == some_user
  end
end
