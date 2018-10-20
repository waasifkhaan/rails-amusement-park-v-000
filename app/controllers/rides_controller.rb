class RidesController < ApplicationController

  def create
    ride = Ride.new
    ride.take_ride

  end

end
