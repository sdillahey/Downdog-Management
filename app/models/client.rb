class Client < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 5}

  has_many :signups
  has_many :workouts, through: :signups
end
