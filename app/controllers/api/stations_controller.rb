class Api::StationsController < ApplicationController
  def index
    @stations = Station.all
    render 'index.json.jb'
  end
end
