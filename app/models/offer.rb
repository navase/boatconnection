class Offer < ActiveRecord::Base
  has_many :reservations, dependent: :destroy
  belongs_to :boats
end
