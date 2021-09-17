class MapquestService < BaseService
  def self.get_directions_from_locations(from, to)
    response = conn('http://www.mapquestapi.com/directions/v2/route').get do |f|
      f.params['key'] = ENV['mapquest_key']
      f.params['from'] = from
      f.params['to'] = to
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
