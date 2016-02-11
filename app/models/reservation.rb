class Reservation < ActiveRecord::Base
  belongs_to :offers
  belangs_to :users
end
