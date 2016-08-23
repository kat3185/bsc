class CreateEventVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :event_volunteers do |t|
      t.integer :user_id, null: false
      t.integer :event_volunteer_slot_id, null: false
      t.text :notes

      t.timestamps
    end
  end
end
