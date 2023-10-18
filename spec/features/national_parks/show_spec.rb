require 'rails_helper'

RSpec.describe 'NationalPark Show', type: :feature do
  it 'can see attributes of each NationalPark' do
    national_park_1 = NationalPark.create(name: "Acadia"
                                         location:   "Maine"    
                                         size:      49075
                                         established_date: 1916 
                                         visitor_center:   "True") 

    national_park_2 = NationalPark.create(name: "Shenandoah" 
                                         location:  "Virginia"       
                                         size:      200000  
                                         established_date: 1935 
                                         visitor_center:  "True") 

    visit "/nationalparks/#{nationalparks.id}"


    expect(page).to have_content("Name: #{national_park_1.name}")
    expect(page).to have_content("Location: #{national_park_1.location}")
    expect(page).to have_content("Size : #{national_park_1.size}")
    expect(page).to have_content("Established Date : #{national_park_1.established_date}")
    expect(page).to have_content("Visitor Center: #{national_park_1.visitor_center}")
  end
end







