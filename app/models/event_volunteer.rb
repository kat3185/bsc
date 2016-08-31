class EventVolunteer < ApplicationRecord
  belongs_to :user
  belongs_to :event_slot_user

  has_one :event_volunteer_slot, through: :event_slot_user
end
