require 'rails_helper'

RSpec.describe 'Trail Index', type: :feature do
  it 'displays all Child records with attributes' do
    trail_1 = Trail.create(name: "wonderland"
                          national_park_id:   1
                          length:  2    
                          scenic_view: "False") 

    trail_2 = Trail.create(name: "mansel"
                           national_park_id:   1
                           length:   8   
                           scenic_view: "True") 

    visit '/trails'

    expect(page).to have_content("Name: #{trail_1.name}")
    expect(page).to have_content("Location: #{trail_1.national_park_id}")
    expect(page).to have_content("Size : #{trail_1.length}")
    expect(page).to have_content("Established Date : #{trail_1.scenic_view}")
    
    
    expect(page).to have_content("Name: #{trail_2.name}")
    expect(page).to have_content("Location: #{trail_2.national_park_id}")
    expect(page).to have_content("Size : #{trail_2.length}")
    expect(page).to have_content("Established Date : #{trail_2.scenic_view}")
  end
end

