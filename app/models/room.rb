class Room < ActiveRecord::Base
  validates_uniqueness_of :number
  validates_presence_of :number, :price
  
  has_many :reservations
  
  def number_and_name
    [ number, name ].join ' '
  end
end
