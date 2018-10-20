class RidesController < ApplicationController

  def create
    binding.pry
    ride = Ride.new
    if ride.take_ride
      

  end

end
