class EventVolunteer < ApplicationRecord
  belongs_to :user
  belongs_to :event_volunteer_slot

  has_one :event, through: :event_volunteer_slot
end
