class Offer < ActiveRecord::Base
  has_many :reservations
  belongs_to :boats
end
