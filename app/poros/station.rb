class Station
  attr_reader :name, :address, :fuel_type, :access_time

  def initialize(info)
    @name = info[:station_name]
    @address = info[:street_address] + ', ' +  info[:city] + ', ' + info[:zip]
    @fuel_type = info[:fuel_type_code]
    @access_time = info[:access_days_time]
  end
end
