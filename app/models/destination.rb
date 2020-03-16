class Destination < ApplicationRecord
  has_many :itinerary_items
  has_many :users, through: :itinerary_items

  accepts_nested_attributes_for :itinerary_items

end

