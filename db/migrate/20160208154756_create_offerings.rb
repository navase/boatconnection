class CreateOfferings < ActiveRecord::Migration
  def change
    create_table :offerings do |t|
      t.integer :price
      t.date :period_start
      t.date :period_end
      t.string :location

      t.timestamps null: false
    end
  end
end
