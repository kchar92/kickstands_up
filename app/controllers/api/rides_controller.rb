class Api::RidesController < ApplicationController
  def index
    @rides = Ride.all
    render 'index.json.jb'
  end
  def show
    @ride = Ride.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
