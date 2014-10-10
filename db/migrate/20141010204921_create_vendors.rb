class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.text :vendor_name
      t.integer :user_id

      t.timestamps
    end
  end
end
