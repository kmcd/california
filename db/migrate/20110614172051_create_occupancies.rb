class CreateOccupancies < ActiveRecord::Migration
  def self.up
    create_table :occupancies do |t|
      t.datetime :arrival
      t.datetime :departure
      t.integer :reservation_id

      t.timestamps
    end
  end

  def self.down
    drop_table :occupancies
  end
end
