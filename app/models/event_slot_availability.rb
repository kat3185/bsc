class EventSlotAvailability < ApplicationRecord
  belongs_to :user
  belongs_to :event_volunteer_slot

  def event
    event_volunteer_slot.event
  end
end
