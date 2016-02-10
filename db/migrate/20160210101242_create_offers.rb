class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :boat, index: true, foreign_key: true
      t.integer :price
      t.date :period_start
      t.date :period_end
      t.string :location

      t.timestamps null: false
    end
  end
end
