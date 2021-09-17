class StationFacade
  def self.create_station(address)
    json = NrelService.get_station_by_address(address)

    Station.new(json[:fuel_stations][0])
  end
end
