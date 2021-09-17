require 'rails_helper'

 RSpec.describe StationFacade do
   it 'can create stations based off of an address', :vcr do
     station = StationFacade.create_station('5224 W 25th Ave, Denver, CO 80214')

     expect(station).to be_an_instance_of(Station)
     expect(station.name).to eq("Target T2225")
     expect(station.address).to eq("1985 Sheridan Blvd., Edgewater, 80214")
     expect(station.fuel_type).to eq("ELEC")
     expect(station.access_time).to eq("24 hours daily")
   end
 end
