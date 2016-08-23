class EventVolunteerSlot < ApplicationRecord
  belongs_to :event
  belongs_to :role

  has_one :event_volunteer
end
