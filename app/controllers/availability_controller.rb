class AvailabilityController < ApplicationController
  def search
    @rooms = Room.all
  end
end
