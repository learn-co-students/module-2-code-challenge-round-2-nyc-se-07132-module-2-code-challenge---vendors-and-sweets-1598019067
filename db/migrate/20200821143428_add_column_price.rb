class AddColumnPrice < ActiveRecord::Migration[5.1]
  def change
    remove_column :vendor_sweets, :price, :integer
    add_column :vendor_sweets, :price, :float
  end
end
