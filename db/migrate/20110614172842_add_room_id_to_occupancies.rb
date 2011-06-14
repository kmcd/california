class AddRoomIdToOccupancies < ActiveRecord::Migration
  def self.up
    add_column :occupancies, :room_id, :integer
  end

  def self.down
    remove_column :occupancies, :room_id
  end
end
