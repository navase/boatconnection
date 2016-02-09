class AddBoatIdToOfferings < ActiveRecord::Migration
  def change
    add_column :offerings, :boat_id, :integer
  end
end
