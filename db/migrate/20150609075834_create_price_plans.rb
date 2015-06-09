class CreatePricePlans < ActiveRecord::Migration
  def change
    create_table :price_plans do |t|
      t.integer :months
      t.integer :price

      t.timestamps null: false
    end
  end
end
