class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :notes
      t.datetime :start_time, null: false
      t.datetime :end_time

      t.integer :venue_id, null: false
      t.integer :band_id
      t.integer :price_id, null: false

      t.timestamps
    end
  end
end
