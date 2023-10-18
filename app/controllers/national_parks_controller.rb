class NationalParksControllers < ApplicationController 
  def index 
    @nationalparks = NationalPark.all 
  end
end