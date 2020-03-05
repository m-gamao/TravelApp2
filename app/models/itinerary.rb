class Itinerary < ApplicationRecord
  has_many :destinations
  belongs_to :user
  has_many :comments
end
