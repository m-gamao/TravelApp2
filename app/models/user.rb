class User < ApplicationRecord
  has_many :destinations, through: :itinerary_items   

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
  validates :email, presence: true, uniqueness: true

  end