class Boat < ActiveRecord::Base
  has_many :offers
  belongs_to :users
end
