class EventSlotAvailabilityValidator < ActiveModel::Validator
  def validate(slot)
    if EventSlotAvailability.where(user: slot.user, event_volunteer_slot: slot.event_volunteer_slot).length > 0
      slot.errors[:id] << 'Event Slot Availablity must be unique!'
    end
  end
end

class EventSlotAvailability < ApplicationRecord
  include ActiveModel::Validations
  validates_with EventSlotAvailabilityValidator

  belongs_to :user
  belongs_to :event_volunteer_slot

  def event
    event_volunteer_slot.event
  end
end
