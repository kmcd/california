class CreateReservations < ActiveRecord::Migration
  def self.up
    create_table :reservations do |t|
      t.datetime :arrival
      t.datetime :departure
      t.integer :room_id
      t.integer :guest_id
      t.integer :occupants
        
      t.timestamps
    end
  end

  def self.down
    drop_table :reservations
  end
end
