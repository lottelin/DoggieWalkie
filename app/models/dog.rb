class Dog < ApplicationRecord
  belongs_to :user

  # has_many :dogactivities, dependent: :destroy
  # has_many :activities, through: :dogactivities

  mount_uploader :photo, PhotoUploader

end
