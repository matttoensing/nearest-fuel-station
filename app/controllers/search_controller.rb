class SearchController < ApplicationController
  def index
    @station = StationFacade.create_station(params[:location])
    @route = RouteFacade.create_route(params[:location], @station.address)
  end
end
