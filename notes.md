Models:

1) User:
    - has_many :destinations
    - has_many :itineraries

2) Destination:
    - belongs_to :user
    - belongs_to :itinerary

3) Session:

4) Itinerary:
    - has_many :destinations
    - belongs_to :user
    - has_many :comments

5) Comments: *if user chooses to share itinerary with a friend
    - belongs_to :user
    - belongs_to :destination
    - belongs_to :itinerary

