class Boat < ActiveRecord::Base
  has_many :offers, dependent: :destroy
  belongs_to :users
end
