class CreateCheckins < ActiveRecord::Migration
  def self.up
    create_table :checkins do |t|
      t.datetime :arrival
      t.integer :reservation_id

      t.timestamps
    end
  end

  def self.down
    drop_table :checkins
  end
end
