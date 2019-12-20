class Api::RideUsersController < ApplicationController
  def index
    @ride_users = RideUser.where(user_id: current_user.id)
    render 'index.json.jb'
  end
end
