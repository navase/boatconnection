class User < ActiveRecord::Base
  has_many :boats
  has_many :reservations
  has_many :offers, through: :boats
end
