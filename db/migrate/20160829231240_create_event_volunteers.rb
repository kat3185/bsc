class CreateEventVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :event_volunteers do |t|
      t.references :user, foreign_key: true
      t.references :event_volunteer_slot, foreign_key: true
      t.boolean :scheduled, default: false
      t.timestamps
    end
  end
end
