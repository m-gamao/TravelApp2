Models:

1) User:
- has_many :destinations
- has_many :itineraries    
- has_many :comments
- has_many :commented_posts, through: :comments
- username
- email
- password_digest


2) Destination:
- belongs_to :user
- belongs_to :itinerary
- has_many :comments
- has_many :users, through :comments
- Name
- Location
- Description

3) Session:

4) Itinerary:
    - has_many :destinations
    - belongs_to :user
    - has_many :comments
    - Date/time
    - Budget

5) Comments: *if user chooses to share itinerary with a friend
    - belongs_to :user
    - belongs_to :destination
    - belongs_to :itinerary
    - content

    
________________________________________________________________________________________
Progress Notes:

3/4/20:  Ran all resource generators.  But need to check the db files because the attributes for the comments and such may be wrong - I followed the live build video for that and I think the video has mistakes.

____________________________
Flow:

-User logs in
-sees all their destinations. This page also says, "you have itineraries" if you have them. 
    -would you like to add an itinerary?
    -button
-Click on Create itinerary
-Form:
    -string for start date and for end date.
-submit the form.  saves the itinerary connected to that destination and user.
-destination has many itineraries, and itineraries belong to a destination.
-
