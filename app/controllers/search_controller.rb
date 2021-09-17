class SearchController < ApplicationController
  def index
    @station = StationFacade.create_station(params[:location])
  end
end
