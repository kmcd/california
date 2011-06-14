class Room < ActiveRecord::Base
  validates_uniqueness_of :number
  validates_presence_of :number, :price
  
  has_many :reservations
  
  def number_and_name
    [ number, name ].join ' '
  end
  
  def available_on?(date)
    not( reserved?(date) or occupied?(date) )
  end
  
  def reserved?(date)
    reservations.exists? [ "arrival >= ? AND departure >= ?", date, date ]
  end
  
  def occupied?(date)
    # checkins.where [ "arrival >= ? AND departure >= ? ", date, date ]
  end
end
