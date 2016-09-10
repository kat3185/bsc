class EventVolunteerValidator < ActiveModel::Validator
  def validate(slot)
    if EventVolunteer.where(user: slot.user, event_volunteer_slot: slot.event_volunteer_slot).length > 0
      slot.errors[:id] << 'Event Slot Availablity must be unique!'
    end
  end
end

class EventVolunteer < ApplicationRecord
  include ActiveModel::Validations
  validates_with EventVolunteerValidator

  belongs_to :user
  belongs_to :event_volunteer_slot

  def event
    event_volunteer_slot.event
  end

  def ids
    "#{id},#{user_id}"
  end

  def full_name
    user.full_name
  end
end
