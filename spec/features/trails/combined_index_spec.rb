require 'rails_helper'

RSpec.describe 'NationalPark Trails Index', type: :feature do
  it 'displays all Child records associated with a Parent with attributes' do
    national_park_1 = NationalPark.create(name: "Acadia"
                                          location:   "Maine"    
                                          size:      49075
                                          established_date: 1916 
                                          visitor_center:   "True")     
                                          trail_1 = Trail.create(name: "wonderland"
                                            national_park_id:   1
                                            length:  2    
                                            scenic_view: "False") 
                  
              trail_2 = Trail.create(name: "mansel"
                                     national_park_id:   1
                                     length:   8   
                                      scenic_view: "True") 
                  

    # Visit the parent's child index page
    visit "/nationalparks/#{national_park_1.id}/trail_1" 

    expect(page).to have_content("Name: #{trail_1.name}")
    expect(page).to have_content("National_Park_Id: #{trail_1.national_park_id}")
    expect(page).to have_content("Length: #{trail_1.length}")
    expect(page).to_have_content("Scenic View: #{trail_1.scenic_view}")

    expect(page).to have_content("Name: #{trail_2.name}")
    expect(page).to have_content("National_Park_Id: #{trail_2.national_park_id}")
    expect(page).to have_content("Length: #{trail_2.length}")
    expect(page).to have_content("Scenic View: #{trail_2.scenic_view}")
  end
end