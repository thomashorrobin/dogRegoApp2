class AddRelationshipsToDogs < ActiveRecord::Migration
  def change
    add_reference :dogs, :owner, index: true, foreign_key: true, null: false
    add_reference :dogs, :breed, index: true, foreign_key: true, null: false
  end
end
