class AvailabilityController < ApplicationController
  def search
    @rooms = Room.all
    @start_date = parse_date(params[:start_date]) || Date.today
    @end_date   = parse_date(params[:end_date]) || 30.days.from_now.to_date
  end
  
  def parse_date(date)
    return unless date
    Date.civil date[:year].to_i, date[:month].to_i, date[:day].to_i
  end
end
