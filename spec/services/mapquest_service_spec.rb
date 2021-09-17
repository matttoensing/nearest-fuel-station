require 'rails_helper'

 RSpec.describe MapquestService do
   it 'can get directions for a nearest location', :vcr do
     json = MapquestService.get_directions_from_locations('5224 W 25th Ave, Denver, CO 80214', "1985 Sheridan Blvd., Edgewater, 80214")

     expect(json).to have_key(:route)
     expect(json[:route].class).to eq(Hash)
     expect(json[:route]).to have_key(:distance)
     expect(json[:route][:distance].class).to eq(Float)
     expect(json[:route]).to have_key(:formattedTime)
     expect(json[:route][:formattedTime].class).to eq(String)
     expect(json[:route]).to have_key(:legs)
     expect(json[:route][:legs].class).to eq(Array)
     expect(json[:route][:legs][0]).to have_key(:maneuvers)
     expect(json[:route][:legs][0][:maneuvers].class).to eq(Array)
     expect(json[:route][:legs][0][:maneuvers][0]).to have_key(:narrative)
     expect(json[:route][:legs][0][:maneuvers][0][:narrative].class).to eq(String)
   end
 end
