class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :Name
      t.string :PostalAddress

      t.timestamps null: false
    end
  end
end
