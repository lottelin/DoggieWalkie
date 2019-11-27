class Activity < ApplicationRecord
  has_many :dog_activities, dependent: :destroy
  has_many :dogs, through: :dog_activities
end
