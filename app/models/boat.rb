class Boat < ActiveRecord::Base
  has_many :offers, dependent: :destroy
  belongs_to :users
  mount_uploader :boat, BoatUploader
end
