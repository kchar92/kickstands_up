class Station < ApplicationRecord
  has_many :ride_stations
  has_many :rides, through: :ride_stations
  geocoded_by :address
  after_validation :geocode
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  def address
    [street_address, city, state].compact.join(', ')
  end

  def coordinates
    Geocoder.coordinates(address)
  end
end
