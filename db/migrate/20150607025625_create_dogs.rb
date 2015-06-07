class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :Name
      t.date :Birthday

      t.timestamps null: false
    end
  end
end
