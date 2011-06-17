class Guest < ActiveRecord::Base
  validates_presence_of :name, :passport
  
  belongs_to :occupancy
end
