class Activity < ApplicationRecord
  has_many :dogactivities, dependent: :destroy
  has_many :dogs, through: :dogactivities
end
