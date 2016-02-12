class AddUserToBoats < ActiveRecord::Migration
  def change
    add_reference :boats, :user, index: true, foreign_key: true
  end
end
