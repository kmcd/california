class Checkin < ActiveRecord::Base
  belongs_to :reservation
  
  has_many :guests
  
  accepts_nested_attributes_for :guests
end
