class NrelService < BaseService
  def self.get_station_by_address(address)
    response = conn('https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest').get do |f|
      f.params['api_key'] = ENV['nrel_api_key']
      f.params['location'] = address
      f.params['format'] = 'json'
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
