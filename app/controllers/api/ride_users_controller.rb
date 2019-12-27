class Api::RideUsersController < ApplicationController
  def create
    @ride_user = RideUser.new(
      user_id: current_user.id,
      ride_id: params[:ride_id]
    )
    @ride_user.save
    render 'show.json.jb'
  end
end
