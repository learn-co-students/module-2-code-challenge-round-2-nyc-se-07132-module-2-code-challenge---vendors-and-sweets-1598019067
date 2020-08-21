class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.string :sweet
      t.string :vendor
      t.integer :price

      t.timestamps
    end
  end
end
