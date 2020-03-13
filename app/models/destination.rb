class Destination < ApplicationRecord
  has_many :itinerary_items
  has_many :users, through: :itinerary_items

  accepts_nested_attributes_for :itinerary_items
  
  def not_a_repeat
    if Visit.where(user_id: user_id, city_id: city_id).count > 0
      errors.add(:city_id, "You have already entered this visit")
    end
  end

end

