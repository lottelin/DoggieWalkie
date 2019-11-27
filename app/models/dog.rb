class Dog < ApplicationRecord
  belongs_to :user

  has_many :dog_activities, dependent: :destroy
  has_many :activities, through: :dog_activities

  mount_uploader :photo, PhotoUploader

end
