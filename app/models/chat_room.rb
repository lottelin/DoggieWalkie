class ChatRoom < ApplicationRecord
  has_many :messages, dependent: :destroy

  def contains_lets_meet

  end
end
