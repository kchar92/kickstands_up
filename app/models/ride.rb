class Ride < ApplicationRecord
  has_many :ride_users
  has_many :users, through: :ride_users
end
