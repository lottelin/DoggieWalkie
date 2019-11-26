class Dog < ApplicationRecord
  belongs_to :user
  has_many :dogactivities, dependent: :destroy
  has_many :activities, through: :dogactivities
end
