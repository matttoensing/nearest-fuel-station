require 'rails_helper'

 RSpec.describe RouteFacade do
   it 'can create a route', :vcr do
     route = RouteFacade.create_route('5224 W 25th Ave, Denver, CO 80214', "1985 Sheridan Blvd., Edgewater, 80214")

     expect(route).to be_an_instance_of(Route)
     expect(route).to be_an_instance_of(Route)
     expect(route.distance).to eq(0.423)
     expect(route.time).to eq("00:01:16")
     expect(route.directions).to eq(["Start out going east on W 25th Ave toward Sheridan Blvd/CO-95.", "Turn right onto Sheridan Blvd/CO-95.", "1985 SHERIDAN BLVD is on the right."])
   end
 end
