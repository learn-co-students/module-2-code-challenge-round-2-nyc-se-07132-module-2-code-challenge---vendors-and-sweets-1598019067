class CreateVendorsweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendorsweets do |t|
      t.integer :vendor_id
      t.string :sweet_id
      t.string :nteger
      t.integer :price

      t.timestamps
    end
  end
end
