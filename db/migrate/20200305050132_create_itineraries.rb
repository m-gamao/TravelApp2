class CreateItineraries < ActiveRecord::Migration[6.0]
  def change
    create_table :itineraries do |t|
      t.string :destination
      t.string :location
      t.string :description
      t.string :date_and_time

      t.timestamps
    end
  end
end
