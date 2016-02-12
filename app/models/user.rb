class User < ActiveRecord::Base
  has_many :boats, dependent: :destroy
  has_many :reservations, dependent: :destroy
end
