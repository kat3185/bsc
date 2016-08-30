class CreateEventVolunteerSlotAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :event_slot_availabilities do |t|
      t.references :user, foreign_key: true
      t.references :event_volunteer_slot, foreign_key: true

      t.timestamps
    end
  end
end
