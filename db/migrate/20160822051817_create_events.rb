class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :notes
      t.datetime :start_time, null: false
      t.datetime :end_time
      t.boolean :weekly_friday_dance, null: false, default: true
      t.string :title, default: "Dance"

      t.integer :venue_id
      t.integer :band_id
      t.integer :price_id, null: false, default: 1

      t.timestamps
    end
  end
end
