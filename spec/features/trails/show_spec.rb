require 'rails_helper'

RSpec.describe 'NationalPark Show', type: :feature do
  it 'can see attributes of each Trail' do
    trail_1 = Trail.create(name: 
                           national_park_id:
                           length:
                           scenic_view:)
                                         

    trail_2 = Trail.create(name: 
                           national_park_id:
                           length:
                           scenic_view:)
                                        
    visit "/trails/#{trails.id}"


    expect(page).to have_content("Name: #{trail_1.name}")
    expect(page).to have_content("National_Park_Id: #{trail_1.national_park_id}")
    expect(page).to have_content("Length : #{trail_1.length}")
    expect(page).to have_content("Scenic_View : #{trail_1.scenic_view}")
  end
end