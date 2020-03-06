class User < ApplicationRecord
  has_many :destinations
  has_many :itineraries    
end
