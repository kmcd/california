class Reservation < ActiveRecord::Base
  validates_presence_of :occupants
  
  belongs_to :room
end
