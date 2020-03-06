class Destination < ApplicationRecord
  belongs_to :user
  belongs_to :itinerary
end

