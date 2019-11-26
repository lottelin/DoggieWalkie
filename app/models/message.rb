class Message < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user, foreign_key: :sender_id
  # belongs_to :user_2, foreign_key: :recepient_id, class_name: 'User'
  validates :content, presence: true, allow_blank: false

  def from?(some_user)
    user == some_user
  end
end
