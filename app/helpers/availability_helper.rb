module AvailabilityHelper
  def availablity_css(room,date)
    if room.available? date
      'free'
    else
      'taken'
    end
  end
end
