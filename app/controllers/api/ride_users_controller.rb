class Api::RideUsersController < ApplicationController
  def create
    @ride_user = RideUser.new(
      user_id: current_user.id,
      ride_id: params[:ride_id]
    )
    @ride_user.save
    render 'show.json.jb'
  end
  # def destroy
  #   @ride_user = RideUser.find_by(user_id: current_user.id, ride_id: params[:ride_id])
  #   @ride_user.destroy
  # end
end