class User < ApplicationRecord
  has_many :destinations, through: :itinerary_items   

  has_secure_password

	validates :email, presence: true, uniqueness: true
end
