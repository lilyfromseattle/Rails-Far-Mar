class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :vendor_name
      t.string :market_name
      t.string :products

      t.timestamps
    end
  end
end
