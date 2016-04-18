class StationsController < ApplicationController
  def index
    @stations = Stations.all
  end
end
