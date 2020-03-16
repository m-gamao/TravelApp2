class User < ApplicationRecord
  has_many :destinations, through: :itinerary_items   
end
