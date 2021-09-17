require 'rails_helper'

 RSpec.describe 'seaech index' do
   it 'user can perform a search and find nearest fueling station with attributes and distance to station with travel time', :vcr do
     station = StationFacade.create_station('5224 W 25th Ave, Denver, CO 80214')
     # directions = DirectionsFacade.create_directions('')

     visit '/'

     page.select "Griffin Coffee", from: :location
     click_on "Find Nearest Station"

     expect(current_path).to eq('/search')

     within('#station') do
       expect(page).to eq(station.name)
       expect(page).to eq(station.address)
       expect(page).to eq(station.fuel_type)
       expect(page).to eq(station.access_time)
     end

     within('#directions') do
       expect(page).to eq(directions.distance)
       expect(page).to eq(directions.travel_time)
       expect(page).to eq(directions.instructions)
     end
#      As a user
# When I visit "/"
# And I select "Griffin Coffee" form the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.
#
# For that station I should see
# - Name
# - Address
# - Fuel Type
# - Access Times
#
# I should also see:
# - the distance of the nearest station (should be 0.1 miles)
# - the travel time from Turing to that fuel station (should be 1 min)
# - The direction instructions to get to that fuel station
#   "Turn left onto Lawrence St Destination will be on the left"
   end
 end
