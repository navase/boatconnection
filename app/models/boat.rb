class Boat < ActiveRecord::Base
<<<<<<< HEAD
  has_many :offers, dependent: :destroy
  belongs_to :users
||||||| merged common ancestors
  has_many :offers
=======
  has_many :offers
  belongs_to :users
>>>>>>> d5ef32b0b52608a671b5b24a853a137b8748fa79
end
