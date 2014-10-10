class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.text :market_name
      t.integer :user_id

      t.timestamps
    end
  end
end
