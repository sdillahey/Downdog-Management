class Workout < ApplicationRecord
  belongs_to :instructor
  has_many :signups
  has_many :clients, through: :signups
end
