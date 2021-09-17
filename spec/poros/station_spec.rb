require 'rails_helper'

 RSpec.describe Station do
   it 'exists and has attributes' do
     attributes = {
       station_name: "Target T2225",
       access_days_time: "24 hours daily",
       fuel_type_code: "ELEC",
       street_address: "1985 Sheridan Blvd.",
       zip: "80214",
       city: "Edgewater"
     }

     station = Station.new(attributes)

     expect(station).to be_an_instance_of(Station)
     expect(station.name).to eq("Target T2225")
     expect(station.address).to eq("1985 Sheridan Blvd., Edgewater, 80214")
     expect(station.fuel_type).to eq("ELEC")
     expect(station.access_time).to eq("24 hours daily")
   end
 end
