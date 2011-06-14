class Occupancy < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :room
  
  has_many :guests
  accepts_nested_attributes_for :guests, :allow_destroy => true
end
