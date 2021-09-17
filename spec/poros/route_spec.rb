require 'rails_helper'

 RSpec.describe Route do
   it 'exists and has attributes' do
     attributes = {
       distance: 0.423,
       formattedTime: "00:01:16",
       legs: [maneuvers: ["Start out going east on W 25th Ave toward Sheridan Blvd/CO-95.", "Turn right onto Sheridan Blvd/CO-95.", "1985 SHERIDAN BLVD is on the right."]]
     }

     route = Route.new(attributes)
     expect(route).to be_an_instance_of(Route)
     expect(route.distance).to eq(0.423)
     expect(route.time).to eq("00:01:16")
     expect(route.directions).to eq(attributes[:legs][0][:maneuvers])
   end
 end
