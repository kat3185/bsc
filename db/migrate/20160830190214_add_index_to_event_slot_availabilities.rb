class AddIndexToEventSlotAvailabilities < ActiveRecord::Migration[5.0]
  def change
    add_index :event_slot_availabilities, [:user_id, :event_volunteer_slot_id], name: :idx_user_availability, unique: true
  end
end
