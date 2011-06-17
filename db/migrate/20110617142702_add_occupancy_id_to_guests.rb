class AddOccupancyIdToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :occupancy_id, :integer
  end

  def self.down
    remove_column :guests, :occupancy_id
  end
end
