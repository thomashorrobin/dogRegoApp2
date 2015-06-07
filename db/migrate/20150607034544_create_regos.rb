class CreateRegos < ActiveRecord::Migration
  def change
    create_table :regos do |t|
      t.integer :RegoLength
      t.date :StartDate
      t.date :EndDate
      t.references :dog, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
