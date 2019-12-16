class Api::RidesController < ApplicationController
  def index
    @rides = Ride.all
    render 'index.json.jb'
  end
  def create
    # use geocoder to get lat and long from starting_point and end_point??
    @ride = Ride.new(
      name: params[:name],
      date_time: params[:date_time],
      starting_point: params[:starting_point],
      end_point: params[:end_point],
      ride_distance: params[:ride_distance],
      bike_type: params[:bike_type]
    )
    # @ride.save
    render 'show.json.jb'
  end
  def show
    @ride = Ride.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
