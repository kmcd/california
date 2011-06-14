class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.string :number
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
