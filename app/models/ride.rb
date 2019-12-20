class Ride < ApplicationRecord
  has_many :ride_users
  has_many :users, through: :ride_users
  has_many :ride_stations
  has_many :stations, through: :ride_stations
  has_many :comments

  def friendly_date_time
    date_time.strftime("%A, %d %b %Y %l:%M %p")
  end
end
