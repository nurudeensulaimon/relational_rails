require 'rails_helper'

RSpec.describe "nationalpark index page", type: :feature do
  it "can see all national parks" do
    national_park_1 = NationalPark.create(name: "Acadia",
                                         location:   "Maine",    
                                         size:      49075,
                                         established_date: '1916', 
                                         visitor_center:   "True") 
    national_park_2 = NationalPark.create(name: "Shenandoah",
                                         location:  "Virginia",       
                                         size:      200000,  
                                         established_date: '1935', 
                                         visitor_center:  "True") 
    
                      

    visit "/nationalparks"

    expect(page).to have_content(national_park_1.name)
    # expect(page).to have_content("Location: #{nationalpark_1.location}")
    # expect(page).to have_content("Size: #{nationalpark_1.size}")
    # expect(page).to have_content("Established Date: #{nationalpark_1.established_date}")
    # expect(page).to have_content("Visitor Center: #{nationalpark_1.visitor_center}")
    
    expect(page).to have_content(national_park_2.name)
    # expect(page).to have_content("Location: #{nationalpark_2.location}")
    # expect(page).to have_content("Size: #{nationalpark_2.size}")
    # expect(page).to have_content("Established Date: #{nationalpark_2.established_date}")
    # expect(page).to have_content("Visitor Center: #{nationalpark_2.visitor_center}")
  end
end

#   it "has a header that says 'All Nationalparks" do
#     visit "/nationalparks"

#     expect(page).to have_content("All NationalParks")
#   end

#   it "shows the name of the national parks" do
#       nationalpark_1 = NationalPark.create(name: "Acadia"
#                                            location:   "Maine"    
#                                            size:      49075
#                                            established_date: 1916 
#                                            visitor_center:   "True") 
    
#     visit "/nationalparks/#{nationalpark_1.id}"

#     expect(page).to have_content(nationalpark.all.name)
#   end
# end
#   it "has a link on the show page to the songs index page" do
#     song_1 = Song.create(title:       "I Really Like You",
#                          length:      208,
#                          play_count:  243810867)

#     visit "/songs/#{song_1.id}"

#     click_link "All Songs"

#     expect(current_path).to eq("/songs")
#   end
# end