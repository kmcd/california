class AddRoomIdToCheckins < ActiveRecord::Migration
  def self.up
    add_column :checkins, :room_id, :integer
  end

  def self.down
    remove_column :checkins, :room_id
  end
end
