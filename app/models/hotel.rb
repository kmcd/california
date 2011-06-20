class Hotel < ActiveRecord::Base
  validates_presence_of :name
  
  def password
    'super-secret'
  end
end
