class AddAdminPasswordToHotel < ActiveRecord::Migration
  def self.up
    add_column :hotels, :admin_password, :string
  end

  def self.down
    remove_column :hotels, :admin_password
  end
end
