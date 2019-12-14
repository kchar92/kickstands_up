class Ride < ApplicationRecord
  has_many :ride_users
  has_many :users, through: :ride_users
  has_many :ride_stations
  has_many :stations, through: :ride_stations
end
