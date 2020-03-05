class Destination < ApplicationRecord
  belongs_to :user
  belongs_to :itinerary
  has_many :comments
  has_many :users, through :comments
end
