require 'rails_helper'

 RSpec.describe MapquestService do
   it 'can get directions for a nearest location', :vcr do
     json = MapquestService.get_directions_from_locations('5224 W 25th Ave, Denver, CO 80214', "1985 Sheridan Blvd., Edgewater, 80214")

     expect(json).to have_key(:route)
     expect(json[:route]).to have_key(:distance)
     expect(json[:route]).to have_key(:formattedTime)
     expect(json[:route]).to have_key(:legs)
     expect(json[:route][:legs][0]).to have_key(:maneuvers)
     expect(json[:route][:legs][0][:maneuvers][0]).to have_key(:narrative)
   end
 end
