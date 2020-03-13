class User < ApplicationRecord
  has_many :destinations, through: :itinerary_items
  has_many :itineraries    
end
