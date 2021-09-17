require 'rails_helper'

 RSpec.describe NrelService do
   it 'can get information on the nearest fueling station', :vcr do
     service = NrelService.get_station_by_address('5224 W 25th Ave, Denver, CO 80214')

     expect(service).to have_key(:fuel_stations)
     expect(service[:fuel_stations].class).to eq(Array)
     expect(service[:fuel_stations][0]).to have_key(:street_address)
     expect(service[:fuel_stations][0][:street_address].class).to eq(String)
     expect(service[:fuel_stations][0]).to have_key(:zip)
     expect(service[:fuel_stations][0][:zip].class).to eq(String)
     expect(service[:fuel_stations][0]).to have_key(:station_name)
     expect(service[:fuel_stations][0][:station_name].class).to eq(String)
     expect(service[:fuel_stations][0]).to have_key(:access_days_time)
     expect(service[:fuel_stations][0][:access_days_time].class).to eq(String)
     expect(service[:fuel_stations][0]).to have_key(:fuel_type_code)
     expect(service[:fuel_stations][0][:fuel_type_code].class).to eq(String)
   end
 end
