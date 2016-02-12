class AddReferencesToReservations < ActiveRecord::Migration
  def change
    add_reference :reservations, :offer, index: true, foreign_key: true
    add_reference :reservations, :user, index: true, foreign_key: true
  end
end
