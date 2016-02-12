class AddBoatToBoats < ActiveRecord::Migration
  def change
    add_column :boats, :boat, :string
  end
end
