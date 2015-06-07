class CreateRegos < ActiveRecord::Migration
  def change
    create_table :regos do |t|
      t.integer :RegoLength
      t.data :StartDate
      t.date :EndDate

      t.timestamps null: false
    end
  end
end
