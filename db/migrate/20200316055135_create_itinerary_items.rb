class CreateItineraryItems < ActiveRecord::Migration[6.0]
  def change
    create_table :itinerary_items do |t|
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
