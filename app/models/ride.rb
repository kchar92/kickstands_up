class Ride < ApplicationRecord
  has_many :ride_users, dependent: :destroy
  has_many :users, through: :ride_users
  has_many :ride_stations
  has_many :stations, through: :ride_stations
  has_many :comments
 
  def friendly_date_time
    date_time.strftime("%B %e %Y %l:%M %p %A")
  end

  def miles
    if ride_distance == 1
      return "#{ride_distance} mile"
    else
      return "#{ride_distance} miles"
    end
  end
end
