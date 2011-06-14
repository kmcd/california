class Room < ActiveRecord::Base
  validates_uniqueness_of :number
  validates_presence_of :number, :price
  
  has_many :reservations
  has_many :occupancies
  
  def number_and_name
    [ number, name ].join ' '
  end
  
  def available?(date=DateTime.now)
    !reserved?(date) && !occupied?(date)
  end
  
  def reserved?(date=DateTime.now)
    reservations.exists? [ "? BETWEEN arrival AND departure", date ]
  end
  
  def occupied?(date=DateTime.now)
    occupancies.exists? [ "? BETWEEN arrival AND departure", date ]
  end
end
