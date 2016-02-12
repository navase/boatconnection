class Reservation < ActiveRecord::Base
  belongs_to :offers
  belongs_to :users
end
