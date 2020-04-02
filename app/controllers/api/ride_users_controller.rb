class Api::RideUsersController < ApplicationController
  def create
    @ride_user = RideUser.new(
      user_id: current_user.id,
      ride_id: params[:ride_id]
    )
    @ride_user.save
    render 'show.json.jb'
  end
  def destroy
    if current_user
      ride_user = RideUser.find_by(ride_id: params[:id], user_id: current_user.id)
      if current_user.id == ride_user.user_id
        ride_user.destroy
        render json: {message: "Ride destroyed"}
      else
        render json: {message: "Unauthorized to delete ride"}, status: :unauthorized
      end
    end
  end
end