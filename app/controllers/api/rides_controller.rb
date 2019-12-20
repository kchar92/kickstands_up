class Api::RidesController < ApplicationController
  def index
    if params[:attending] == "true"
      @rides = current_user.rides
    else
      @rides = Ride.all - current_user.rides
    end
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
    @ride.save
    render 'show.json.jb'
  end
  def show
    @ride = Ride.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def update
    @ride = Ride.find_by(id: params[:id])
    @ride.name = params[:name] || @ride.name
    @ride.starting_point = params[:starting_point] || @ride.starting_point
    @ride.end_point = params[:end_point] || @ride.end_point
    @ride.bike_type = params[:bike_type] || @ride.bike_type
    @ride.save
    render 'show.json.jb'
  end
  def destroy
    @ride = Ride.find_by(id: params[:id])
    @ride.destroy
    render 'destroy.json.jb'
  end
end
