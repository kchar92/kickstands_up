class User < ApplicationRecord
  has_many :ride_users
  has_many :rides, through: :ride_users
end
