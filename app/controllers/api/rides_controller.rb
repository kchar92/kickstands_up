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
    starting_point = params[:starting_point]
    start_coordinates = Geocoder.coordinates(starting_point)
    start_latitude = start_coordinates[0]
    start_longitude = start_coordinates[1]

    end_point = params[:end_point]
    end_coordinates = Geocoder.coordinates(end_point)
    end_latitude = end_coordinates[0]
    end_longitude = end_coordinates[1]

    @ride = Ride.new(
      creator: current_user.name,
      name: params[:name],
      date_time: params[:date_time],
      starting_point: params[:starting_point],
      starting_point_lat: start_latitude,
      starting_point_long: start_longitude,
      end_point: params[:end_point],
      end_point_lat: end_latitude,
      end_point_long: end_longitude,
      bike_type: params[:bike_type],

    )
    if @ride.save
      render 'show.json.jb'
    else
      render json: { errors: @ride.errors.full_messages }, status: :unprocessable_entity
    end
  end
  def show
    @ride = Ride.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def update
    @ride = Ride.find_by(id: params[:id])
    @ride.name = params[:name] || @ride.name
    @ride.date_time = params[:date_time] || @ride.date_time
    @ride.starting_point = params[:starting_point] || @ride.starting_point
    start_coordinates = Geocoder.coordinates(@ride.starting_point)
    start_latitude = start_coordinates[0]
    start_longitude = start_coordinates[1]

    @ride.starting_point_lat = start_latitude
    @ride.starting_point_long = start_longitude


    @ride.end_point = params[:end_point] || @ride.end_point
    end_coordinates = Geocoder.coordinates(@ride.end_point)
    end_latitude = end_coordinates[0]
    end_longitude = end_coordinates[1]
    @ride.end_point_lat = end_latitude
    @ride.end_point_long = end_longitude

    @ride.bike_type = params[:bike_type] || @ride.bike_type
    if @ride.save
      render 'show.json.jb'
    else
      render json: { errors: @ride.errors.full_messages }, status: :unprocessable_entity
    end
  end
  def destroy
    ride = Ride.find_by(id: params[:id])
    ride.destroy
    render json: {message: "Ride destroyed"}
  end
end
