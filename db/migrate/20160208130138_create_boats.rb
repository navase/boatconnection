class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :name
      t.string :boat_type
      t.integer :capacity
      t.string :drive
      t.string :image

      t.timestamps null: false
    end
  end
end
