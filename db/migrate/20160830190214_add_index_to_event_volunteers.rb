class AddIndexToEventVolunteers < ActiveRecord::Migration[5.0]
  def change
    add_index :event_volunteers, [:user_id, :event_volunteer_slot_id], name: :idx_user_availability, unique: true
  end
end
