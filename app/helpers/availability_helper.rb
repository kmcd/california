module AvailabilityHelper
  def availablity_css(room,date)
    if room.available_on? date
      'free'
    else
      'taken'
    end
  end
end
