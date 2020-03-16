class AddDateToItineraryItems < ActiveRecord::Migration[6.0]
  def change
    add_column :itinerary_items, :timestamp, :start_date
    add_column :itinerary_items, :timestamp, :end_date
  end
end
