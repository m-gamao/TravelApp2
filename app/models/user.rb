class User < ApplicationRecord
  has_many :destinations
  has_many :itineraries    
  has_many :comments
  has_many :commented_posts, through: :comments
end
