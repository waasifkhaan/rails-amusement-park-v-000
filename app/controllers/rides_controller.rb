class RidesController < ApplicationController

  def create
    binding.pry
    ride = Ride.new(attraction_id: params[:attraction_id], user_id: current_user.id)
    flash[:message] = ride.take_ride
    redirect_to user_path
  end
end

end
