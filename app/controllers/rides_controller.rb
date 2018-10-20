class RidesController < ApplicationController

  def create
    binding.pry
    ride = Ride.new(attraction_id: params[:attraction_id], user_id: current_user.id)

    if ride.take_ride


  end
end

end
