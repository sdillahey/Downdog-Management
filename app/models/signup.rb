class Signup < ApplicationRecord
  belongs_to :workout
  belongs_to :client
end
