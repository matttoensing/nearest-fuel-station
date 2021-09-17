class RouteFacade
  def self.create_route(from, to)
    json = MapquestService.get_directions_from_locations(from, to)

    json[:route][:legs][0][:maneuvers] = json[:route][:legs][0][:maneuvers].map { |direction| direction[:narrative]}

    Route.new(json[:route])
  end
end
