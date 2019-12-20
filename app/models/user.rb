class User < ApplicationRecord
  has_many :ride_users
  has_many :rides, through: :ride_users
  has_many :comments
  has_secure_password
  validates :email, presence: true, uniqueness: true

end
