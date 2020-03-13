class Itinerary_item < ApplicationRecord
  belongs_to :user
  belongs_to :destination

end
