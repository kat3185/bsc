class CreateEventVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :event_volunteers do |t|
      t.integer :event_id, null: false
      t.integer :user_id, null: false
      t.integer :role_id, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.text :notes

      t.timestamps
    end
  end
end
