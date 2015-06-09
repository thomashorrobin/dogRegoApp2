class AddPricePlanIdToRegos < ActiveRecord::Migration
  def change
    add_reference :regos, :price_plan, index: true, foreign_key: true, null: false
  end
end
