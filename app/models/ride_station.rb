class RideStation < ApplicationRecord
  belongs_to :ride
  belongs_to :station
end
