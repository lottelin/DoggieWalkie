class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages, dependent: :destroy
  has_one :dog, :class_name => 'Dog', :foreign_key => 'user_id'

  validates :full_name, presence: true
  validates :address, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
  validates :photo, presence: true
end
