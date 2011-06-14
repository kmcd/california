class GuestAddCheckinId < ActiveRecord::Migration
  def self.up
    add_column :guests, :checkin_id, :integer
  end

  def self.down
    remove_column :guests, :checkin_id
  end
end
